import React from 'react';
import type { Meta, StoryObj } from '@storybook/react';
import Button from './Button';

const meta: Meta<typeof Button> = {
  title: 'ReactComponentLibrary/Button',
  component: Button,
  tags: ['autodocs'],
};

export default meta;
type Story = StoryObj<typeof Button>;

export const HelloWorld: Story = {
  args: {
    label: 'Hello world!',
  },
};

export const ClickMe: Story = {
  args: {
    label: 'Click me!',
  },
};
