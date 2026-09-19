## `clojure:temurin-25-tools-deps-1.12.6.1673-bookworm-slim`

```console
$ docker pull clojure@sha256:f9cc3a7d8ed79594c5acc01d394d54b3c051699659b379a754e176de3a09c4f6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-tools-deps-1.12.6.1673-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:875425b014669c04e0f824f29490b63cb05c98f384276a976ad79fb8947cd097
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.5 MB (187539396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a546387a8e8ff55ad9609ff5b83fa641b4ade503e6a93fbb77d1d03ceab4aba8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:17:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:17:14 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:17:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:17:14 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 01:17:14 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:17:28 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 01:17:28 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 01:17:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:17:28 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:17:28 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9619d61531366d65cb3ab71f136438495a7bcabbba67ec1a0bbb94ba045b8906`  
		Last Modified: Sat, 19 Sep 2026 01:17:49 GMT  
		Size: 92.6 MB (92615084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca7b190e67dc8a11e4fd8c6461af095f8ac18e662ccdf1a0298f30dddb6eb6f9`  
		Last Modified: Sat, 19 Sep 2026 01:17:49 GMT  
		Size: 66.7 MB (66684829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17ffb81ba82c8a485dd47ab3aa737189d295238d2a0f0ff9ac3c4cee9e91acab`  
		Last Modified: Sat, 19 Sep 2026 01:17:46 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17a6ec415ddb94e2d7e1075a637b11be4d0414ba2f77dbe60000be952838034a`  
		Last Modified: Sat, 19 Sep 2026 01:17:46 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:eb31c695515dff21ab1e73b0b3704384f048d6e15bf2b34ada5f848f9bf08fd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5104071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20936bdd36582132969419f1bef1abb497d167dd1d708ce6446967e83c32f4f9`

```dockerfile
```

-	Layers:
	-	`sha256:ef437c7cd16ff2a06a6c61fc62883882c09441d772d097aef9428b203673ae9d`  
		Last Modified: Sat, 19 Sep 2026 01:17:46 GMT  
		Size: 5.1 MB (5087392 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4bc4994e3964283488f45f9e147edb7dd31a72b833dbb2b5a235fc2ad95d7e83`  
		Last Modified: Sat, 19 Sep 2026 01:17:45 GMT  
		Size: 16.7 KB (16679 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-1.12.6.1673-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:1d7fbcb25880fc9843f3d85ad820b31027f6bbb31c6ab225931d63db50971df7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.3 MB (186340844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ed013a7493238155583dbdc01a8a2fb50d0f2ec943c0b5f50e24cdb9ba48f3a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 01:24:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 01:24:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 01:24:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 01:24:28 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 01:24:28 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 01:24:42 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 01:24:42 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 01:24:42 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 01:24:42 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 01:24:42 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00d6ec9ab9428cadc6c9977fbf86f4db17f76ca3e730f94b344abaa27420a9f7`  
		Last Modified: Sat, 19 Sep 2026 01:25:04 GMT  
		Size: 91.5 MB (91532239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cf2de3ecf687b55362503431c5afde60845facd0fa15190b468283b7a328058`  
		Last Modified: Sat, 19 Sep 2026 01:25:03 GMT  
		Size: 66.7 MB (66683886 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fde0f92246027951ebf9d12f0af07e9258b439585bd223450649359db520bc10`  
		Last Modified: Sat, 19 Sep 2026 01:25:00 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b1e918a3dfc91d5c6bc3213762191632e7f9933164cd6d58119c983a1314160`  
		Last Modified: Sat, 19 Sep 2026 01:25:00 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:17c9f5ffe585fc2e77ed33ecae0d10e4ce8027beaeec454541ce8e86780844f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5109995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8941bf79e59a9283c13b5595663dcd16b054886bdb0420ba43a9ae703dba8060`

```dockerfile
```

-	Layers:
	-	`sha256:9b3adc676731f0ccda363352dafed8039bdb544765bb0009ca829e8a590b0682`  
		Last Modified: Sat, 19 Sep 2026 01:25:00 GMT  
		Size: 5.1 MB (5093174 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:66e0168d4370c1be26819483c23736ce98841fb709db6bfc792a80b06d83440b`  
		Last Modified: Sat, 19 Sep 2026 01:25:00 GMT  
		Size: 16.8 KB (16821 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-1.12.6.1673-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:5daef47846cb453914eb7a54befb4bf3f340ed44de0e3b2a50ea00de334844d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.8 MB (195832017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdf8f5f7dcd9fb7c65f79dd114559f0c50d07a5a54dd8352d7ba6aecc7999e62`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Fri, 04 Sep 2026 00:26:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:26:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:26:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:26:52 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:26:52 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:27:32 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:27:32 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:27:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:27:32 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:27:32 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7aa3e4fcb75b78de0549a83b157bf61da822bcd023735210fb72766eaa14cc64`  
		Last Modified: Mon, 24 Aug 2026 23:19:16 GMT  
		Size: 32.1 MB (32076477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a22fbbfc408dae3c28607d79e00a607cf87f23c89af839c30eb985419c6e0a5`  
		Last Modified: Fri, 04 Sep 2026 00:28:12 GMT  
		Size: 91.3 MB (91255803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d5b3d0c42782c32fa4edd206fe464a36185586b09f9ec91353bfc0d9d555c5b`  
		Last Modified: Fri, 04 Sep 2026 00:28:12 GMT  
		Size: 72.5 MB (72498696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:109b9ea3f6e9778c611682ae05dbb09b15496b5e8101f1129bb3dae6695da359`  
		Last Modified: Fri, 04 Sep 2026 00:28:08 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a07afd20185f0f2f4981f8ffeeaa6b7208e8b712cecba15b2d41bf42c5e6a4a5`  
		Last Modified: Fri, 04 Sep 2026 00:28:09 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:24595b68f902f8b95663e6d2caf6c262ed969f28ed00f26cf61076c54ae837a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5092549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c817d5802b5fbe463cea61fdae8acd94ad2415ec79c62281fdba8927db9b810d`

```dockerfile
```

-	Layers:
	-	`sha256:0bed13f2655d450eb9ad340ad15ad1945c513520d2b8ae66de54655b105ae19c`  
		Last Modified: Wed, 16 Sep 2026 10:58:08 GMT  
		Size: 5.1 MB (5075810 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:68c740cf190a0f43c582697f9687de69eb91f62d64dfa85c33a7c11fff8ecdc3`  
		Last Modified: Wed, 16 Sep 2026 10:58:07 GMT  
		Size: 16.7 KB (16739 bytes)  
		MIME: application/vnd.in-toto+json
