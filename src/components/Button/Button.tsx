import React from 'react';
import './Button.css';
interface ButtonProps {
  label: string;
}

const Button = (props: ButtonProps) => {
  return <button>{props.label}</button>;
};

export default Button;

// This is a test comment for pre-commit hook
