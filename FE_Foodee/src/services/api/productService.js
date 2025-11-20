import axios from 'axios';

const PRODUCT_API = 'http://localhost:8080/api/admin/products';
// Nếu có controller riêng cho loại SP & danh mục thì chỉnh lại URL cho đúng:
const PRODUCT_TYPE_API = 'http://localhost:8080/api/product-types';
const CATEGORY_API     = 'http://localhost:8080/api/categories';

// Lấy danh sách sản phẩm (ADMIN)
export const getProducts = async (token) => {
  try {
    const response = await axios.get(PRODUCT_API, {
      headers: { Authorization: `Bearer ${token}` },
      timeout: 5000,
    });
    return response.data.products;
  } catch (error) {
    if (error.response?.status === 401) {
      throw new Error('Vui lòng đăng nhập để xem thực đơn.');
    }
    throw error.response?.data || 'Không thể tải danh sách sản phẩm.';
  }
};

// Lấy loại sản phẩm
export const getProductTypes = async (token) => {
  try {
    const response = await axios.get(PRODUCT_TYPE_API, {
      headers: { Authorization: `Bearer ${token}` },
      timeout: 5000,
    });
    return response.data;
  } catch (error) {
    throw error.response?.data || 'Không thể tải danh sách loại sản phẩm.';
  }
};

// Lấy danh mục
export const getCategories = async (token) => {
  try {
    const response = await axios.get(CATEGORY_API, {
      headers: { Authorization: `Bearer ${token}` },
      timeout: 5000,
    });
    return response.data;
  } catch (error) {
    throw error.response?.data || 'Không thể tải danh sách danh mục.';
  }
};

// Tìm kiếm sản phẩm theo tên
export const searchProducts = async (token, name) => {
  try {
    const url = name
      ? `${PRODUCT_API}/search?name=${encodeURIComponent(name)}`
      : PRODUCT_API;

    const response = await axios.get(url, {
      headers: { Authorization: `Bearer ${token}` },
      timeout: 5000,
    });
    return response.data.products;
  } catch (error) {
    throw error.response?.data || 'Không thể tìm kiếm sản phẩm.';
  }
};

// Thêm sản phẩm
export const createProduct = async (token, productData) => {
  try {
    const response = await axios.post(PRODUCT_API, productData, {
      headers: { Authorization: `Bearer ${token}` },
      timeout: 5000,
    });
    return response.data.product;
  } catch (error) {
    throw error.response?.data || 'Không thể thêm sản phẩm.';
  }
};

// Cập nhật sản phẩm
export const updateProduct = async (token, id, productData) => {
  try {
    const response = await axios.put(`${PRODUCT_API}/${id}`, productData, {
      headers: { Authorization: `Bearer ${token}` },
      timeout: 5000,
    });
    return response.data.product;
  } catch (error) {
    throw error.response?.data || 'Không thể cập nhật sản phẩm.';
  }
};

// Xóa sản phẩm
export const deleteProduct = async (token, id) => {
  try {
    await axios.delete(`${PRODUCT_API}/${id}`, {
      headers: { Authorization: `Bearer ${token}` },
      timeout: 5000,
    });
  } catch (error) {
    throw error.response?.data || 'Không thể xóa sản phẩm.';
  }
};

// Lấy sản phẩm "bán chạy" (lọc từ list)
export const getBestSellingProducts = async (token) => {
  try {
    const response = await axios.get(PRODUCT_API, {
      headers: { Authorization: `Bearer ${token}` },
      timeout: 5000,
    });
    const rawProducts = Array.isArray(response.data)
      ? response.data
      : response.data.products || [];
    return rawProducts.filter(
      (p) => p.categoryName?.toLowerCase() === 'bán chạy'
    );
  } catch (error) {
    if (error.response?.status === 401) {
      throw new Error('Vui lòng đăng nhập để xem sản phẩm bán chạy.');
    }
    throw error.response?.data || 'Không thể tải danh sách sản phẩm bán chạy.';
  }
};
