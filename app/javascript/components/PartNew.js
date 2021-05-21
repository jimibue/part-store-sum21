import React from 'react'
import PartForm from './PartForm'

const PartNew = (props) => {
    const {engine} = props
    return (
        <>
        <div>PartNew Page</div>
         <PartForm engine={engine} />
        </>
        
    )
}

export default PartNew