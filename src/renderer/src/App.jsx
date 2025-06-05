import { useEffect, useState } from 'react'
import logo from '../../../resources/icon.png'

function App() {
  const [products, setProducts] = useState([]);
  document.title = 'Продукты';
  useEffect(() => {
    (async () => {
      const res = await window.api.getProducts();
      setProducts(res);
      console.log(res);
    })()
  }, [])


  return (
    <>
      <div className='page-heading'>
        <img alt="logo" className="logo" src={logo} />
        <h1>Hello, world!</h1>
      </div>
      {products.length === 0 ? (
        <p>Loading...</p>
      ) : (
        <ul className='products-list'>
          {products.map((product, idx) => (
            <li key={idx} className='product-card'>
              <div className='product-heading'>
                <h3>{product.type_name} | {product.product_name}</h3>
                <p>0(р)</p>
              </div>
              <p>{product.article}</p>
              <p>{product.min_cost}(р)</p>
              <p>{product.width}(м)</p>
            </li>
          ))}
        </ul>
      )}
    </>
  )
}

export default App

