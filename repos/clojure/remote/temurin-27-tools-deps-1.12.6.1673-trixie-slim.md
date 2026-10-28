## `clojure:temurin-27-tools-deps-1.12.6.1673-trixie-slim`

```console
$ docker pull clojure@sha256:e970c85bc72053a062582501d04079d096c2fd52e66be6db177342194aed59a0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-tools-deps-1.12.6.1673-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:e421bea7adf2917625568bdcd424bdb0e41e66fa8884136c4271a55578397d52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.5 MB (192456547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f282e17dd3c5ce6fbba7b0eba9753886eb5e6c2b14a9d86ed2e3828f09faa3b0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Tue, 27 Oct 2026 00:54:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:54:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:54:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:54:58 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 27 Oct 2026 00:54:58 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:55:14 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 27 Oct 2026 00:55:14 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 27 Oct 2026 00:55:14 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:55:14 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:55:14 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52e2506863eb1fd14dbf51f162aabd501b4b185ac51e8242572445d623fcb837`  
		Last Modified: Tue, 27 Oct 2026 00:55:37 GMT  
		Size: 93.6 MB (93622507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86860243b816e07fef134fb9d868fe140f023688fbca104be68d32175bb4219f`  
		Last Modified: Tue, 27 Oct 2026 00:55:36 GMT  
		Size: 69.0 MB (68989415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa6f9173507175a212be333e62aaccd13ee95325213267de8e9100bc12731f66`  
		Last Modified: Tue, 27 Oct 2026 00:55:33 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c3fd94bfe07f635b1b9d288a0cb1d7c1ba15a1342431f023a9e6102e8ed852c`  
		Last Modified: Tue, 27 Oct 2026 00:55:33 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:525491709523ff0863ab3f64cdf046a6bf7db645b8a9db2501991abdbfb4d29e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5241647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52ded1871ddd93a38fe69430ef3b098ca45ed95afadc40354e6bcc2731b3b4bc`

```dockerfile
```

-	Layers:
	-	`sha256:3cc10bb243beb5bdcd74a477675d1cb0c4d3ff823019e9781e25a82e185b45fe`  
		Last Modified: Tue, 27 Oct 2026 00:55:33 GMT  
		Size: 5.2 MB (5225689 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:34dd1ca0afab278eef66ed9c5f70f34b9844d16eda04fa19161dbebd9325bcba`  
		Last Modified: Tue, 27 Oct 2026 00:55:33 GMT  
		Size: 16.0 KB (15958 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps-1.12.6.1673-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:874106818da34d109a85f4eb6df9fbc809bde83aa2b99698d79edfadf5414194
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.7 MB (191652792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08c849fe6f6aabe5e4054f218712d359d75fb8ebf7bc803d3e81662878340a7a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:24:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:24:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:24:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:24:10 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:24:10 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:24:28 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:24:28 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:24:29 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:24:29 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:24:29 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74b444be3f50ed5ddaaa11ec64aa51d2a29019ef09ea46f8467834e2b1b25fa6`  
		Last Modified: Wed, 28 Oct 2026 02:24:49 GMT  
		Size: 92.6 MB (92633146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45cab3f5d16f94b72096df9f26d0c1d28484ecabccabb2daebc494e2b84d71a9`  
		Last Modified: Wed, 28 Oct 2026 02:24:49 GMT  
		Size: 68.8 MB (68805107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7b32a18314450bf52b5e2913f91b83d4ae70faac589782e88024e5bd997680b`  
		Last Modified: Wed, 28 Oct 2026 02:24:46 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cb7fe7c364fb92b2a4823aea15d05f562e4ee7d662b071504ac0e068c09655a`  
		Last Modified: Wed, 28 Oct 2026 02:24:46 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7de30c232de8ce3c672e43e65d361c90c7459b78155315ab359db81b006e5136
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5247524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdb91ccb5f5856e0a5254decccfd663b67c660f2fca5ca456f2af8ef8b996bef`

```dockerfile
```

-	Layers:
	-	`sha256:32413c22601b938489f3848d6fb551d848cfaace79076a16f0d32dcd568a464f`  
		Last Modified: Wed, 28 Oct 2026 02:24:47 GMT  
		Size: 5.2 MB (5231447 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0213f75b45ecf3eff59c1b66dd212e258b1ebd69b4028c2a8a0d54b1f5688248`  
		Last Modified: Wed, 28 Oct 2026 02:24:46 GMT  
		Size: 16.1 KB (16077 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps-1.12.6.1673-trixie-slim` - linux; ppc64le

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

### `clojure:temurin-27-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

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
