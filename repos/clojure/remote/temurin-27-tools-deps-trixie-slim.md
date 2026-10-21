## `clojure:temurin-27-tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:ecc6fb6a0483f24852507aed2f439e1437745e4059a0d6bc2cfa9aa710a1c1dc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-tools-deps-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:9b98f7819143d46197aa5eb6affcb061ea74900c5b987e2958b4314c2d0b6906
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.5 MB (192456816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8fd818d30bedff003eb6e28a69b94a97b0cbede056fe09743621ab6bef885c6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:22:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:22:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:22:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:22:50 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 01:22:50 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:23:06 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 01:23:06 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 01:23:06 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:23:06 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:23:06 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40732541bd47f6eef09ae59c4ca0921a0b662bc1cf2b26d2601e7bc475752e0b`  
		Last Modified: Wed, 21 Oct 2026 01:23:28 GMT  
		Size: 93.6 MB (93622446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bab51729cbe492bef1ddeebad86f27d6c19521f178905b5953c60fb1d73c179d`  
		Last Modified: Wed, 21 Oct 2026 01:23:28 GMT  
		Size: 69.0 MB (68989750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e9420adaf710bfb06089ae28711a7b7f4bab175d13f9340c0544f9ad91e2210`  
		Last Modified: Wed, 21 Oct 2026 01:23:24 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef1538d99e639f4c0744a07b4342524dd5ea88ce82aef1f821c5ecc92770aac2`  
		Last Modified: Wed, 21 Oct 2026 01:23:24 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:8986bdc5fc6737d4691521c7253d8b3aac52293c7a010e839a4635f917d97a4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5241618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f9ed2309f1f42d82479788318603d5569b68b8bbe68bbd9f9c72ee1102f7192`

```dockerfile
```

-	Layers:
	-	`sha256:90578ebf80db82fc23583f7b40bd4601d582859bac2dea85112491c2dd22f4d1`  
		Last Modified: Wed, 21 Oct 2026 01:23:25 GMT  
		Size: 5.2 MB (5225661 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:015d89e99220de48c824e24528ae6d72a85a01caa1d6b2c7ab4cc419eb6ca881`  
		Last Modified: Wed, 21 Oct 2026 01:23:24 GMT  
		Size: 16.0 KB (15957 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:836df1cfab140b6741735b99413b7668c9adeb7c9978eec19e38dfec4a0bf4e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.6 MB (191640291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c3f33726c6082184da5210dc70b6da29c7b873b6eddae836ed1f1ca441232f8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:28:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:28:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:28:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:28:57 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 01:28:57 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:29:13 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 01:29:13 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 01:29:13 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:29:13 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:29:13 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a8bdecf5bbe4707a2da85fd9fa6d1f48b6257a61a0ddd790a8c4f697a88a30d`  
		Last Modified: Wed, 21 Oct 2026 01:29:35 GMT  
		Size: 92.6 MB (92633123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdd62493670ce09d6f3af2aeb5b4a22266db505734bdaf953287ad855a78476a`  
		Last Modified: Wed, 21 Oct 2026 01:29:35 GMT  
		Size: 68.8 MB (68805648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e0d52073955abe8778aa980feee3f6fcd2bf48e2acee1ad78c8ad7954e24ebd`  
		Last Modified: Wed, 21 Oct 2026 01:29:32 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9b8313ca11d6800ec140b3aa44193d3ec25c74ccc34b57c5289e77580ff94ee`  
		Last Modified: Wed, 21 Oct 2026 01:29:32 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c53883b4e7130d98dcc80811e705781dcd726f24a39eae4fa9b6b30f51832111
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5247496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dc3a9d90166dcefa38dc01c25fd2d409b0c7146cecec97d13ae37b1a3ebd410`

```dockerfile
```

-	Layers:
	-	`sha256:58881cc7a18f9a0526072b1e955c9020fffd68990ec55dd0c17a39dc58ff106f`  
		Last Modified: Wed, 21 Oct 2026 01:29:32 GMT  
		Size: 5.2 MB (5231419 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:090887e0c2481d9d8d8aeb42b3c2fe381022c5dc21567e879a61ff42e1860b26`  
		Last Modified: Wed, 21 Oct 2026 01:29:32 GMT  
		Size: 16.1 KB (16077 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:bf68fa8885f25fc1116c13cc7aad14b4186f87f5e93ed118ebe881782f1fe1e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.3 MB (200327594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee89e544c760df6c2f6e3fffff9d279cd4c0725582a780e96b409f0e15b04e1f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 11:21:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 11:21:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 11:21:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 11:21:36 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 11:21:37 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 11:28:59 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 11:29:01 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 11:29:02 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 11:29:02 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 11:29:02 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:5e4eb9dc9f650fb59b641178db89dd4b48ea020427f346ce7f9d30a6b89bcd7e`  
		Last Modified: Tue, 20 Oct 2026 23:35:12 GMT  
		Size: 33.7 MB (33651935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a828c2fdb7bfe67406011a719ce82adb7addc34d3cb8df199646234ff6fa682`  
		Last Modified: Wed, 21 Oct 2026 11:26:03 GMT  
		Size: 92.3 MB (92255800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb30a5095976465d9783cea0bbf1db88e464551ff533a8907dffc66af00f7a16`  
		Last Modified: Wed, 21 Oct 2026 11:29:43 GMT  
		Size: 74.4 MB (74418816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7acbb6c702ba7ccd27dcbeedbad27cc2332fdedc19780b5a46d8193dd28748d1`  
		Last Modified: Wed, 21 Oct 2026 11:29:40 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:160a0eb586d1e90b0cbf751749d2b3e7b46f4607532d0aa5b3c1f33256d9372a`  
		Last Modified: Wed, 21 Oct 2026 11:29:40 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:316c2835fd3dfb95b76d8bd1ee1403ed56b085b5d200a1c6d9ec13f6c7783dc4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5229975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:437c5a1737727d65d7ebac9438b175b05ba55a0fa9ae162af34f5a657ee3b557`

```dockerfile
```

-	Layers:
	-	`sha256:9602ba67251c3636c3c900f27254137838d23b2b225271b6a4bb265be79d8b1a`  
		Last Modified: Wed, 21 Oct 2026 11:29:41 GMT  
		Size: 5.2 MB (5213968 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:298db1b07aa715cbed4858da83ac136f827c9492f62fec00d620303a565e2007`  
		Last Modified: Wed, 21 Oct 2026 11:29:40 GMT  
		Size: 16.0 KB (16007 bytes)  
		MIME: application/vnd.in-toto+json
