import { ReactNode } from "react";
import Link from "next/link";
import Head from "next/head";

type Props = {
	children?: ReactNode;
	title?: string;
};

const Layout = ({ children }: Props) => (
	<div>
		<Head>
			<title>Create Next App</title>
			<meta content="width=device-width, initial-scale=1" name="viewport" />
			<meta name="description" content="Generated by create next app" />
			<link rel="icon" href="/favicon.ico" />
		</Head>
		<header>
			<nav>
				<Link href="/">Home</Link> | <Link href="/about">About</Link> |{" "}
				<Link href="/users">Users List</Link> |{" "}
				<a href="/api/users">Users API</a>
			</nav>
		</header>
		{children}
		<footer>
			<hr />
			<span>I here to stay (Footer)</span>
		</footer>
	</div>
);

export default Layout;