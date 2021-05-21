import React from 'react'

const Engines = (props) => {

    const { engines } = props
    const renderEngines = ()=>{
        return engines.map(engine => {
            return (
                <div>
                    <h3>{engine.name}</h3>
                    <a href={`/engines/${engine.id}`}>Engine controller Show method</a>
                    <a href={`/engines/${engine.id}/parts`}>Parts controller Index method</a>
                </div>
            )
        })
    }
    return (
        <div>
            <h1>Engines Page</h1>
            {renderEngines()}
        </div>
    )
}

export default Engines