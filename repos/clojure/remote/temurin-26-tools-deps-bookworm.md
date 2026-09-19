## `clojure:temurin-26-tools-deps-bookworm`

```console
$ docker pull clojure@sha256:efcb514af1558a305ce37efbf0b33399fad0e048ffd7d954f1d9a0d90f1e8fef
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-tools-deps-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:9a075362727f641fe0f90f511d383bfced45108e4bc0f7969edaf0e2d2dd84c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.2 MB (221235786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e7b15893019a35b5316967821e5d84862af0bd794dce14afc616a069def18e9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Wed, 16 Sep 2026 04:38:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:38:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:38:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:38:26 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 16 Sep 2026 04:38:26 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:38:40 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 16 Sep 2026 04:38:40 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 16 Sep 2026 04:38:40 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:38:40 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:38:40 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4d7d5e0615348c367156651b03074528fffd08a42d10a0dc72634469a3b0ed7`  
		Last Modified: Wed, 16 Sep 2026 04:39:04 GMT  
		Size: 94.6 MB (94563717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0635e16f3ece3cebc18ecfe7cc347273c4a4a37c0208cd2b9db314e0979ea46`  
		Last Modified: Wed, 16 Sep 2026 04:39:04 GMT  
		Size: 78.2 MB (78173664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbdc0b2ec78cae1545ea7da6c89cbbf9d794c00693d3bc26debe94e264e7b0eb`  
		Last Modified: Wed, 16 Sep 2026 04:39:01 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3e937baa793ca800c8406d4b1053cb07911257271bf056af0376c9077dc2037`  
		Last Modified: Wed, 16 Sep 2026 04:39:01 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:1627a5f95183aed2aebe4562833577c5fae3626826ebfc06a89a90f31ae9e22b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7362784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8a76d0d32963c33aae050ee058f78530d5c2a36cd2889556ccf59109b35243d`

```dockerfile
```

-	Layers:
	-	`sha256:393a288b922ade80bdb9b8f2ebfda4db0936188a5b754efd71f670f8ebb54a90`  
		Last Modified: Wed, 16 Sep 2026 04:39:01 GMT  
		Size: 7.3 MB (7346175 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f4ebac3a22ee3ca5bd5cd899c58eaf392212b3c9fb40e2f2db3edf0dfdd7dfe`  
		Last Modified: Wed, 16 Sep 2026 04:39:00 GMT  
		Size: 16.6 KB (16609 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:5321c972d17b18fbc193f924c2b49086e69f5a10e05add1792267d1f03762dea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.1 MB (220106974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff02501788f01ad7a2f41ec594d12ae0b724af145b5fa9ddd77fca2c901d68b2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:25:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:25:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:25:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:25:40 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 01:25:40 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:25:54 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 01:25:54 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 01:25:54 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:25:54 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:25:54 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da4c1d2f69312a4049f9a840fe0efa0cc5b8db569886851498aaf37b29d28c60`  
		Last Modified: Sat, 19 Sep 2026 01:26:17 GMT  
		Size: 93.5 MB (93541603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbf170bdbea7917313aa2a36609144a66d0b613da3e630242e7577c5bffd6828`  
		Last Modified: Sat, 19 Sep 2026 01:26:16 GMT  
		Size: 78.2 MB (78174420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c67bb68fad669be396b12b2de1efbd4e1fe2fff22322c04a85ffdbdb50ab3c8`  
		Last Modified: Sat, 19 Sep 2026 01:26:13 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1cf0f860840d6ad5b18e713545d61cd52b3bd8570e7e5d995e3097fca2bee8d`  
		Last Modified: Sat, 19 Sep 2026 01:26:14 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:9bf8972a02d4ad92bab605ff7e4e872cf317af5c0f80d0563bd5aab3948d3dc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7368746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65670784432cb984dba3b261f92b4d36519e28dc96cf17fdc105d0fbe673e735`

```dockerfile
```

-	Layers:
	-	`sha256:8077e5aafca0aa1e86a30cd6304358c36c507f794389961f23c7402337482d8c`  
		Last Modified: Sat, 19 Sep 2026 01:26:14 GMT  
		Size: 7.4 MB (7351995 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:03b7ef97875286aa40cc3b5c086f7d7d436afe92d476012c0dd5eb8a8a7a1805`  
		Last Modified: Sat, 19 Sep 2026 01:26:13 GMT  
		Size: 16.8 KB (16751 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:b3396753adf779795f1cf2fdfe085c1cb115fe751e2321c940cd61e16ed43dc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229677928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c9c1e3d14d82e04fee35447b1062eff052cadc18ecadf5203a41bccd955a837`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Fri, 04 Sep 2026 00:30:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:30:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:30:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:30:39 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:30:39 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:31:26 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:31:27 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:31:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:31:28 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:31:28 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4cd70023d17c961e89077d0123ff0b5246b3abdec0a67aadfaabca3e61d0f713`  
		Last Modified: Mon, 24 Aug 2026 23:19:17 GMT  
		Size: 52.3 MB (52341764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08b5c0ba1d980dee6b8e75fb7cb4f75335f2fe42a232754ee7c0ef5fd543814a`  
		Last Modified: Fri, 04 Sep 2026 00:32:12 GMT  
		Size: 93.4 MB (93350784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0569b5205f3e3b2b4186620a3cafd4ea8f09391a7b1cc80d0b3df1314973520d`  
		Last Modified: Fri, 04 Sep 2026 00:32:12 GMT  
		Size: 84.0 MB (83984337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3fb5b52965899a879dc28df140549ed0a4099d5d51ba2600698afbf4ce07cf6`  
		Last Modified: Fri, 04 Sep 2026 00:32:08 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ae5655c99611b6954fbc21ff7ed7fb8d4354f77a454efca838a1cd19729b6ef`  
		Last Modified: Fri, 04 Sep 2026 00:32:08 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:51b27b07b661ac7e54ff372ae2011b66a36bafc60502bb6d6bf1c842f76afec3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7352782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47269ee9f3fa527f52c403eebdfdc88720830c1402cb79f078d428986bb486dc`

```dockerfile
```

-	Layers:
	-	`sha256:417006aee712b56b31602798ddff27bbbfbfff4acaca41aa9be51524564d0296`  
		Last Modified: Wed, 16 Sep 2026 11:02:03 GMT  
		Size: 7.3 MB (7336114 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b58d929fadb28583ed209b591d474f5a7e2f47609dec37e64761dadb8240cded`  
		Last Modified: Wed, 16 Sep 2026 11:02:03 GMT  
		Size: 16.7 KB (16668 bytes)  
		MIME: application/vnd.in-toto+json
