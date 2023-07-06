import type { StoryObj, Meta } from '@storybook/react'

import BlogLayout from './BlogLayout'

export const generated: StoryObj<typeof BlogLayout> = {
  render: (args) => {
    return <BlogLayout {...args} />
  },
}

export default {
  title: 'Layouts/BlogLayout',
  component: BlogLayout,
} as Meta<typeof BlogLayout>
