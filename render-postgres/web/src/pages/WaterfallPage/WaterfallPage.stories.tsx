import type { StoryObj, Meta } from '@storybook/react'

import WaterfallPage from './WaterfallPage'

export const generated: StoryObj<typeof WaterfallPage> = {
  render: (args) => {
    return <WaterfallPage id={42} {...args} />
  },
}

export default {
  title: 'Pages/WaterfallPage',
  component: WaterfallPage,
} as Meta<typeof WaterfallPage>
