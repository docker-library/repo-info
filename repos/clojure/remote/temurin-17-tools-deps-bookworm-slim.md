## `clojure:temurin-17-tools-deps-bookworm-slim`

```console
$ docker pull clojure@sha256:50f78efb93ed806d5c07973931fe11e9fe36c8a55e71262916ebe757933c5647
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:ad50556b907dc75a2dc9d371e14010c5daf6aa56f9c72e507c41598a72faa308
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.8 MB (240847047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:214ff3308e3011ee0dcc2e8df595208c506e26108d3a94ba21f74b5e645f9541`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 19 Nov 2026 22:07:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:07:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:07:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:07:40 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:07:40 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:07:53 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:07:54 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:07:54 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 19 Nov 2026 22:07:54 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 19 Nov 2026 22:07:54 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc9e15041a02ac7cacfbdea08a2389c20c2c30349bb3e222e16103ad79d51dc7`  
		Last Modified: Thu, 19 Nov 2026 22:08:21 GMT  
		Size: 146.1 MB (146086151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e2b758fab8877322874d02d3af0a4ec8942f105d76f750e0b6fa1b0a5b5c9b5`  
		Last Modified: Thu, 19 Nov 2026 22:08:18 GMT  
		Size: 66.5 MB (66511368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6e0c31ba15d35b9cc4acf6cadecf8015133c7a8df7512bf7b388d4d2fb70f8f`  
		Last Modified: Thu, 19 Nov 2026 22:08:11 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a65308d7038d06490addccafa369149abb036fe82721a8e4222d6ad049506fb4`  
		Last Modified: Thu, 19 Nov 2026 22:08:11 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:5a29d7c80feb8c12f7043207a21be9885f2512bbf0adaa4042457bf91d2fb6ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5134097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a1003244b56956e91d43c0f9be486029751832956ee413e73736142bad44fed`

```dockerfile
```

-	Layers:
	-	`sha256:a58efa34265d07a1036913e5dc9b564d238add86afbc880ca7847ec555b5b684`  
		Last Modified: Thu, 19 Nov 2026 22:08:11 GMT  
		Size: 5.1 MB (5118107 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a3f36d3ed27145ece78bf57ac3081ec851faca76936e81873a119fd4ae4d71d`  
		Last Modified: Thu, 19 Nov 2026 22:08:11 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:dc3baaab610402b7dde612e058cf6e7f92905ae56a5659ce51365520f2be14e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.6 MB (239599951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a2d51d7617eb8eb200c031fbbdf4ba47bd0f250238078ccbc5a8d6f29b5967c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 19 Nov 2026 22:06:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:06:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:06:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:06:41 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:06:41 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:06:55 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:06:55 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:06:55 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 19 Nov 2026 22:06:55 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 19 Nov 2026 22:06:55 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8de81aa0a466fb5ce1feab882a993ad841d3dd1b0642d72e9009c5ac4f7d3c7`  
		Last Modified: Thu, 19 Nov 2026 22:07:17 GMT  
		Size: 145.0 MB (144957162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7948760ece31c394873646dbf579de23e0bc25c28f31d76d56aed723293a104`  
		Last Modified: Thu, 19 Nov 2026 22:07:16 GMT  
		Size: 66.5 MB (66496884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:948b04cb1c46770e685bda7090e66d834b3a8aed0a9468575f2e25892d05740b`  
		Last Modified: Thu, 19 Nov 2026 22:07:10 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43d0158da500095f00538493067d453126c1fb427790dfb13f690a0652970a0a`  
		Last Modified: Thu, 19 Nov 2026 22:07:13 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6a0cba0995ee44901db04fd9411e965d00776fd79d795b71daccd2f6c1204cf7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5139976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e79af8ff4aa5ee5231c2f355f14ff13817fa549931fb6645c8ae5c7386c08ac`

```dockerfile
```

-	Layers:
	-	`sha256:9c3ac34fdf5d29e2ebd5a1a4ee6839c0a61c08b5850b9d7b6a4484adc61bc902`  
		Last Modified: Thu, 19 Nov 2026 22:07:13 GMT  
		Size: 5.1 MB (5123868 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45ee109c9c2f100d198f95c4e085951f2672482e823b9a188bce1fbbb8d95b55`  
		Last Modified: Thu, 19 Nov 2026 22:07:13 GMT  
		Size: 16.1 KB (16108 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:f9a11777fba30e36e73e5c82f45500470874326948ac06c12ff8b2a7e1c2e91e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.3 MB (249288626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:713895871851e5956bb272bca813f33a59123a5419f8a4efcbb78cdd60bdbd23`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 08:02:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 08:02:14 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 08:02:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 08:02:14 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 12 Nov 2026 08:02:14 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 08:20:22 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 12 Nov 2026 08:20:23 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 12 Nov 2026 08:20:23 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 08:20:23 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 08:20:23 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:a3dff645b91d02e56b5f761df11ba1d58ba63ceca28ce0fd26bcdff159295e70`  
		Last Modified: Thu, 05 Nov 2026 06:14:37 GMT  
		Size: 32.1 MB (32093560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8154dc284622fb4f6b2910a339d4e429599729583b608bae1fdc5b72270941fc`  
		Last Modified: Thu, 12 Nov 2026 08:07:17 GMT  
		Size: 144.9 MB (144859676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3ec71ef6a9e83e58c695bef14d3a96c12d6e471fcb7601600515a63f0699295`  
		Last Modified: Thu, 12 Nov 2026 08:21:13 GMT  
		Size: 72.3 MB (72333844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc4e07d41a9fab6449c31bdd42e8b4b988e4a25c83b94516d523077bf95ba70b`  
		Last Modified: Thu, 12 Nov 2026 08:21:11 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c3927ec9f08ae2112dc09823ca9418e287d9aafe92c9c32530d1168c1aae5b4`  
		Last Modified: Thu, 12 Nov 2026 08:21:11 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:09c57a2f985d2d183d124e2451d3b453df31332590908539ebc9a37f62998718
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5138055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f84717d5f31a8c44832c67de0c88b81a296288c1c197ac8095d722463c141a8`

```dockerfile
```

-	Layers:
	-	`sha256:d8603c99b3b183c49006ccd36e79a116df69b5141b2726de230c63a38fd26019`  
		Last Modified: Thu, 12 Nov 2026 08:21:11 GMT  
		Size: 5.1 MB (5122017 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2063ed2155875937cead0770f15fc17c363f3a8244b5b2d72f3ecb130c38fa5`  
		Last Modified: Thu, 12 Nov 2026 08:21:10 GMT  
		Size: 16.0 KB (16038 bytes)  
		MIME: application/vnd.in-toto+json
