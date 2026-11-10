## `clojure:tools-deps-1.12.6.1673-bookworm-slim`

```console
$ docker pull clojure@sha256:82068a79113b331c68662893ede241fc3678bfffbc14af53f35d671c91da5b4f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:tools-deps-1.12.6.1673-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:2e05792818fd3965fda1bf1fea4e5f1d98666d2c9bec34759745c9c37668b595
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.4 MB (187356647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a7c0c96ba7d04a7013943f58246bf12953147514aa6dfa3a7ac8e2a33934043`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 00:42:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:42:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:42:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:42:32 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 00:42:32 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:42:47 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 00:42:47 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 00:42:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:42:47 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:42:47 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5b5e1df2263dcd24f13fee8505f5b94c935379721231c133f279180b2f7e1b2`  
		Last Modified: Tue, 10 Nov 2026 00:43:09 GMT  
		Size: 92.6 MB (92598940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0535c429fd1b4f87729397bb4c1b59de2070150cd39fee61e0bc84fdf5d95d32`  
		Last Modified: Tue, 10 Nov 2026 00:43:08 GMT  
		Size: 66.5 MB (66508179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba7ee2bf610df59c56e66d5d1a94e1a6943518f5990c94471506bf0a91f3773f`  
		Last Modified: Tue, 10 Nov 2026 00:43:05 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28b02f75e9982384a27451685a94af628b482c6242e33983c743aca850d02613`  
		Last Modified: Tue, 10 Nov 2026 00:43:05 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c6c53a51517cd88f6c74692f2f1dbf603fda5d6258dada1569c213e273e0be5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5102876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd3cf0cb77616f66dc61133fc3191f3e90272595ec2d2cbf70eed3ddbd47716b`

```dockerfile
```

-	Layers:
	-	`sha256:2e4b2610cf49f6188b5c964c8a73dbeda7366c6a0ced3e0dd14340157a0f0a2e`  
		Last Modified: Tue, 10 Nov 2026 00:43:06 GMT  
		Size: 5.1 MB (5086197 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9af62e48fbcd9f97c695cda469d65f59bc95755ec3265ad94b2706ea93190e22`  
		Last Modified: Tue, 10 Nov 2026 00:43:05 GMT  
		Size: 16.7 KB (16679 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-1.12.6.1673-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:0f1d3522164809b1eb0e01144c70424272603ba6863570f75dca12b6e90919c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.2 MB (186171904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b8e6744b0883c111140e1861eadc5f25a1af2a4f5f7f392b886855d8b1e05bb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 00:41:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:41:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:41:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:41:55 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 00:41:55 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:42:10 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 00:42:10 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 00:42:10 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:42:10 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:42:10 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38a66b09173c8c9a55f7553896a8d2091d03fac7fda4ffa40354604eeabc6e25`  
		Last Modified: Tue, 10 Nov 2026 00:42:30 GMT  
		Size: 91.5 MB (91525601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:655d79a02631e8ef6d0e4c60ab21b558ebbce0a163167412390d70ff459ff512`  
		Last Modified: Tue, 10 Nov 2026 00:42:30 GMT  
		Size: 66.5 MB (66500399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9fd1e507dedb7bd0cda52724bc9c87f97b31bddffb35c2ac2844b8eb8e28823`  
		Last Modified: Tue, 10 Nov 2026 00:42:27 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abe098a6308006fa7305303a6409cf5174a8cf31cb588f51cd9fc20a29821c11`  
		Last Modified: Tue, 10 Nov 2026 00:42:27 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d2464e88c4e7463c901dec575f9e8dd6ca386b183f5701858c759b6a5a46ce0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5108800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cfb51c7a63c1c2bb9f732e106a642778c7dd238ebc162e506b4ed354b70bfb9`

```dockerfile
```

-	Layers:
	-	`sha256:f48221a0dee9638eede59b9e93f4fbbb13da11479f874248f4c98b8bc92e59b3`  
		Last Modified: Tue, 10 Nov 2026 00:42:27 GMT  
		Size: 5.1 MB (5091979 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:33bd42fd3ec604ffa00d7ed7084a320da956e65766574b8992a96b6f3e1bceee`  
		Last Modified: Tue, 10 Nov 2026 00:42:27 GMT  
		Size: 16.8 KB (16821 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-1.12.6.1673-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:954f5e5d7a353b8c19f328809528cecc347580ecd9874286a2c70f5976440a7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.5 MB (194540537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b134ab298c9ca290f410b153756e7bf121fbb47b0864d520a17576e3a431f9f0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 16:02:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 16:02:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 16:02:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 16:02:19 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 16:02:20 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 16:10:08 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 16:10:08 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 02:47:12 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 02:47:12 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 02:47:12 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a3dff645b91d02e56b5f761df11ba1d58ba63ceca28ce0fd26bcdff159295e70`  
		Last Modified: Thu, 05 Nov 2026 06:14:37 GMT  
		Size: 32.1 MB (32093560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49c6a745c05ed8183f7d78d41d53dcc6725d2853049a6761ad29bfd0076632b4`  
		Last Modified: Thu, 05 Nov 2026 16:07:19 GMT  
		Size: 90.1 MB (90111726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b68492e3c6a674ea251327fd0130267454973052cb7bb0fc89f1fc7df5f502d1`  
		Last Modified: Thu, 05 Nov 2026 16:11:01 GMT  
		Size: 72.3 MB (72333707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45e18b50a26c84593a17e75b913a2f9f53f4a9589b5be0af40394e9b4548f930`  
		Last Modified: Thu, 05 Nov 2026 16:10:59 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cced84c14f7e993df736ee491e4f4040651fbabfc6fd81b328e3465ae934955`  
		Last Modified: Tue, 10 Nov 2026 02:47:33 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7c19f8e4bd9d0825d2a044816252a69e64333c0bddb98530397837cef20d6034
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5089555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f863aa6344fe5d7e1aa49025e8d07bc2f1ce4659271b38d3cb1d71f759d79d94`

```dockerfile
```

-	Layers:
	-	`sha256:d633f52c9ef937b79e5ccd291fceb717f5cb60aa879187439e2ada82ece593f2`  
		Last Modified: Tue, 10 Nov 2026 02:47:33 GMT  
		Size: 5.1 MB (5072818 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e696690b85831c8bfb4398aedf0e2cf5cc3c0d4cd77a5397899fa133dc28a40`  
		Last Modified: Tue, 10 Nov 2026 02:47:33 GMT  
		Size: 16.7 KB (16737 bytes)  
		MIME: application/vnd.in-toto+json
