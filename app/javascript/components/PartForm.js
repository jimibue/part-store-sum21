import React from 'react'

const PartForm = (props) => {
    const {engine, part} = props
    const url = part ? 
               `/engines/${engine.id}/parts/${part.id}`:
               `/engines/${engine.id}/parts`
    
    const defaultName =  part ? part.name : ''         
    const quantity =  part ? part.quantity : ''         
    const price =  part ? part.price : ''         
    return (
        <div>
            <h1>{part ? "Edit" : "New"} Part Form</h1>
            <p>engine id: {engine.id}</p>
            <p>part id: {part ? part.id : "no part"}</p>
            <form action={url} method='post'>
                {part && <input type='hidden' name='_method' value='patch' />}
                <p>name</p>
                <input defaultValue={defaultName} name='part[name]' />
                <p>quantity</p>
                <input defaultValue={quantity} name='part[quantity]' />
                <p>price</p>
                <input defaultValue={price} name='part[price]' />
                <button type='submit'>{part ? "update" : "create"}</button>
            </form>
        </div>
    )
}

export default PartForm
