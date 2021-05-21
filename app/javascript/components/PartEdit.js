import React from 'react'
import PartForm from './PartForm'

const PartEdit = (props) => {
    const {engine, part} = props
    return (
        <>
        <div>PartEdit Page</div>
        <PartForm engine={engine} part={part} />
        </>
    )
}

export default PartEdit