import React from 'react'
import PropTypes from 'prop-types'


const Button = ({  text, onClick }) => {
    return (
        <button
            onClick={onClick}
            className='btn'
        >
            {text}
        </button>
    )
}

Button.defaultProps = {
    color: 'aquamarine',
    text: "Button"
}

Button.propTypes = {
    color: PropTypes.string,
}
export default Button
