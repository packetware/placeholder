<script>
	import { Button } from '$lib/components/ui/button';

	import PacketwareLogo from '$lib/images/pw.png';
</script>

<main class="flex flex-col items-center justify-center h-[100dvh]">
	<div class="max-w-md px-4 py-8 space-y-4 text-center">
		<img src={PacketwareLogo} alt="Packetware logo" class="h-12 mx-auto" />
		<h1 class="text-3xl font-bold">Site Under Construction</h1>
		<p class="text-muted-foreground">
			We're currently building an amazing new experience for you. Please visit our main website in
			the meantime.
		</p>
		<Button href="https://packetware.net/i/dash" variant='secondary'>Packetware Dashboard</Button>
	</div>
</main>
