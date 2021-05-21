import React from 'react'

const Parts = (props) => {

    const {engine, parts} = props

    const renderParts = ()=>{
       return parts.map( part => {
           return (
               <div>
                   <h3>{part.name}</h3>
                   <a href={`/engines/${engine.id}/parts/${part.id}`}>show</a>
                   <a href={`/engines/${engine.id}/parts/${part.id}/edit`}>update</a>
                   <a href={`/engines/${engine.id}/parts/${part.id}`} data-method='delete'>delete</a>
               </div>
           )
       })
    }

    return (
        <div>
           <div>Parts Page from engine: {engine.name}</div>
           <a href={`/engines/${engine.id}/parts/new`}>new</a>
           {renderParts()}
        </div>
    )
}

export default Parts