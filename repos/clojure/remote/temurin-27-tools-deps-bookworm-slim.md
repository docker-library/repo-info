## `clojure:temurin-27-tools-deps-bookworm-slim`

```console
$ docker pull clojure@sha256:0b1be67d07c9a62c98f131f3a00436e2e33a446348ae069fb39a541c04d66ff5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-tools-deps-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:7ec9ce595c8e9af9c456d0fc2d512639a2defb48d04b288b94f8f7c245ad200e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.4 MB (188405892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2ff645f576d450e804950dad10f9edf4b8ccffb0b8a9b504860923185f60e50`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 00:44:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:44:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:44:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:44:04 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 00:44:04 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:44:17 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 00:44:17 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 00:44:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:44:17 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:44:17 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f9554ab037e7ac67944614d5c59570533419ca48d2a8437f0d69c68688beb86`  
		Last Modified: Tue, 10 Nov 2026 00:44:36 GMT  
		Size: 93.6 MB (93647867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a93f4d7676a434fa05f9e0670649e1cdf2917bf20b2050ae311be5721d51ece`  
		Last Modified: Tue, 10 Nov 2026 00:44:36 GMT  
		Size: 66.5 MB (66508495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12ba51376e739ce38752e17124ea98e7ab8d64fe1afe1bbf28e6589a82282b90`  
		Last Modified: Tue, 10 Nov 2026 00:44:33 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79436898a2e025c4d00d88acd5ed6b2736ffba6de2460244b281ebcee4df158f`  
		Last Modified: Tue, 10 Nov 2026 00:44:33 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c7a7b50b22c445bac9431e59e0e087ac86fc93273a476b7db5d8f049bc5283a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5097750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:594e147aa759375ed39c81db68d1eb5b41c0bd3bfbf4cf69bad3d54a20f1af6b`

```dockerfile
```

-	Layers:
	-	`sha256:b69c8c03622a730a229317eae83479fc305b802d643701f070b4b53532fa8c53`  
		Last Modified: Tue, 10 Nov 2026 00:44:33 GMT  
		Size: 5.1 MB (5081767 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f5d7d71ca626254b793a587a5edb1b8d011ec3175ca36930fe7fdd0a722c632`  
		Last Modified: Tue, 10 Nov 2026 00:44:33 GMT  
		Size: 16.0 KB (15983 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:0c39d929726edfb68ba26c2fba50b3309567be7325741bb2763b301580ee0b17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.3 MB (187306722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d09d517aaf8c9c844c3f8709ff2845a948a74ba5250655ea8d760882713d864`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 00:43:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:43:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:43:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:43:35 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 00:43:35 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:43:49 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 00:43:49 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 00:43:49 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:43:49 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:43:49 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3c3e5cafbbce83d714a4091ef8f5782b8857d37107d1c3f75473f9dac0fa29b`  
		Last Modified: Tue, 10 Nov 2026 00:44:09 GMT  
		Size: 92.7 MB (92660465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5555c6eaa7076140ea5231296d83336bb5cbb1826cf6d416ae0bb76a8799b5e6`  
		Last Modified: Tue, 10 Nov 2026 00:44:09 GMT  
		Size: 66.5 MB (66500353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5051a41e6dafbbae7989fd9bfbb94d8ac2757202628431b25e8b4a9cd3305217`  
		Last Modified: Tue, 10 Nov 2026 00:44:06 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a55531a510d15f65f398c1492ca8fd81d88059e7b48d5d5172f4b07555284b3e`  
		Last Modified: Tue, 10 Nov 2026 00:44:06 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e6c1ee574733f29eccd1464ef39f377d409e0d91c69354289333b966b06805cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5103626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71c46686d90027dbaf58bf06cebebfc0c32c2a8cbcf148db5c79b42406c0b6cf`

```dockerfile
```

-	Layers:
	-	`sha256:ce52fe014a4be6e7811374258abad07a53974b24042df072c1a239516818ce4d`  
		Last Modified: Tue, 10 Nov 2026 00:44:07 GMT  
		Size: 5.1 MB (5087525 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9fd939042dd905e57fb9459358ae7aa0a934a9ff60cc9be7695d48735f5c7c31`  
		Last Modified: Tue, 10 Nov 2026 00:44:06 GMT  
		Size: 16.1 KB (16101 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:523f364065bae270cb3ac9d36f3defe75ee01346882c24f2ff884591b81b4504
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.4 MB (196354584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3c5c301366b685cd0ff1c9965f5526cf6b1af15bffb68b1960af57e8668d25e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 02:52:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 02:52:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 02:52:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 02:52:51 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 02:52:52 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 03:09:08 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 03:09:09 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 03:09:09 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 03:09:09 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 03:09:09 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a3dff645b91d02e56b5f761df11ba1d58ba63ceca28ce0fd26bcdff159295e70`  
		Last Modified: Thu, 05 Nov 2026 06:14:37 GMT  
		Size: 32.1 MB (32093560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d02c64fde149246e1dbcd66abe605690d715a442bae5549d2bac4eff3880950b`  
		Last Modified: Tue, 10 Nov 2026 02:57:38 GMT  
		Size: 91.9 MB (91925729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e079e0b28b7ab572c37163411696b2b200df1a057faf33e94831da754657360a`  
		Last Modified: Tue, 10 Nov 2026 03:09:43 GMT  
		Size: 72.3 MB (72333750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b90999f9d0989774feb61f8098cc93198aea0ca61fa36cc596fbaf808a6a094`  
		Last Modified: Tue, 10 Nov 2026 03:09:41 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19af4264b751767d08e4f87761c5056784c734a7fec4ee0bd51b417898b3a3a2`  
		Last Modified: Tue, 10 Nov 2026 03:09:41 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:95f340fe74887adc0d848cae0d9246b76b5d092a92cb4c3dbaef81691584f59b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5085030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce6a4ec0329ce187717bbfb5e992aa349a5367a41d69c17777a7555c06d06b66`

```dockerfile
```

-	Layers:
	-	`sha256:1dcc84783e96e1da2e7bdabcf51d8b5974233d64eb8ff72a858db43dd11c886f`  
		Last Modified: Tue, 10 Nov 2026 03:09:41 GMT  
		Size: 5.1 MB (5069000 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3283dc4e456e811487d54b5dfba5649cd2290e182e2a8412417fafa9b8764d59`  
		Last Modified: Tue, 10 Nov 2026 03:09:41 GMT  
		Size: 16.0 KB (16030 bytes)  
		MIME: application/vnd.in-toto+json
