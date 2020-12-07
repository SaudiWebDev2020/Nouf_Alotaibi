import React,{useState, useEffect} from 'react';
import ProductForm from '../components/ProductForm';
import ProductList from '../components/ProductList';
import axios from 'axios';

export default () => {
    const [products, setProducts] = useState([]);
    const [loaded, setLoaded] = useState(false);

    useEffect(()=>{
        axios.get('http://localhost:8000/api/product')
            .then(res=>{
                setProducts(res.data);
                setLoaded(true);
            });
    },[products])

    return (
        <div>
            <ProductForm/>
            {loaded && <ProductList products={products}/>}
        </div>
    )
}