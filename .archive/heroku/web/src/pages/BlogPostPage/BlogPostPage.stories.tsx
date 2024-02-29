import type { StoryObj, Meta } from '@storybook/react'

import BlogPostPage from './BlogPostPage'

export const generated: StoryObj<typeof BlogPostPage> = {
  render: (args) => {
    return <BlogPostPage id={42} {...args} />
  },
}

export default {
  title: 'Pages/BlogPostPage',
  component: BlogPostPage,
} as Meta<typeof BlogPostPage>
