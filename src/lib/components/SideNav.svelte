<script>
  import SideNavButton from './SideNavButton.svelte';
  import { page } from '$app/stores';

  const {
    references = [
      {
        id: '1-1-1',
        active: true,
        href: '#',
        text: 'This is the first link'
      },
      {
        id: '1-1-2',
        active: false,
        href: '#',
        text: 'This is the second link'
      },
      {
        id: '1-1-3',
        active: false,
        href: '#',
        text: 'This is the third link'
      }
    ],
    slug = '/'
  } = $props();
</script>

<aside class="aside">
  {#each references as ref (ref.id)}
    {#if ref.active != undefined}
      <SideNavButton id={ref.id} href={ref.href} text={ref.text} active={ref.active} />
    {:else}
      <SideNavButton id={ref.id} href={ref.href} text={ref.text} {slug} />
    {/if}
  {/each}
</aside>

<style>
  .aside {
    width: 100%;
    display: flex;
    flex-direction: column;
    gap: 13px;
    margin-left: -20px;
    grid-column: 1 / 1;
    grid-row: var(--sidenavRow, '1/1');
  }
</style>
