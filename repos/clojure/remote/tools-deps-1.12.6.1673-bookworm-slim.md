## `clojure:tools-deps-1.12.6.1673-bookworm-slim`

```console
$ docker pull clojure@sha256:29d11a6426bce24fbec49c625cf933083494b102ba234d2d094cffd4664aa511
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

### `clojure:tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

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

### `clojure:tools-deps-1.12.6.1673-bookworm-slim` - linux; arm64 variant v8

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

### `clojure:tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

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

### `clojure:tools-deps-1.12.6.1673-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:f13dcbfea42cea4b647a95f88249179e841fc4d1ea7658ddaf511ae4442355c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.8 MB (195839233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4ed42c05089a8059a2ada420047ff3ffee412dcfcab1e3c4a737ea46802e5db`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 08:15:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 08:15:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 08:15:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 08:15:10 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 08:15:10 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 08:21:45 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 08:21:45 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 08:21:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 08:21:46 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 08:21:46 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b165d89f1b791c34b9c20f2a31fc4c5d2df2528fb278dbc56b0e78f166c6b6b4`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 32.1 MB (32083564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c8b45bcb39b6c6ccac622b12389186f44a6f6e5836499fd9e571b1f68545fba`  
		Last Modified: Sat, 19 Sep 2026 08:18:58 GMT  
		Size: 91.3 MB (91255822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a66c3b83cd320a0ea178c1623b769b0abd61a30716a14ac6ca79c04da76ed6cd`  
		Last Modified: Sat, 19 Sep 2026 08:22:33 GMT  
		Size: 72.5 MB (72498804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97ccac95fd60ac01818199c42530721cb8518c37053b3b054077d344f5001af6`  
		Last Modified: Sat, 19 Sep 2026 08:22:31 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71bcd58ea042f451b2d211afe7a42be2b7a47679c565d49c358fcd54ae0513da`  
		Last Modified: Sat, 19 Sep 2026 08:22:31 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:11a2673e7696d7d277996c1b1a73b0c751bc6f0c00d2a3fece53a2ebabd6221c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5092612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8de48a6d3cd609a35cd3c38408dd699e7ebd36011e9d9829e73ff615401926cc`

```dockerfile
```

-	Layers:
	-	`sha256:5a70189206800b541166dc9357aabb47513321ea104abc6e05038be5d6336173`  
		Last Modified: Sat, 19 Sep 2026 08:22:31 GMT  
		Size: 5.1 MB (5075874 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:abc08f1b4a4454fd093198054850fc233ab29d3bf78afe0eff8b8e910ea04e42`  
		Last Modified: Sat, 19 Sep 2026 08:22:31 GMT  
		Size: 16.7 KB (16738 bytes)  
		MIME: application/vnd.in-toto+json
