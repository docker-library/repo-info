## `clojure:temurin-11-trixie`

```console
$ docker pull clojure@sha256:fd71c480e5a4f00fb51168bb8b133414b43865f0b163771596bc0b1183bdfd22
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:cd0b51c681ef4210d41b5fed1d5930d41a879cff336d619f436b79922db3b3a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.9 MB (277905774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e75ac57f3ba3491eaacfb085c838611518d51e4d00f11824947c791568c7baa`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 00:47:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 00:47:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 00:47:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 00:47:16 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 12 Nov 2026 00:47:16 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 00:47:32 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 12 Nov 2026 00:47:33 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 12 Nov 2026 00:47:33 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb9c2f4f012212a1b90b306cc79a2ef391eaefd0a08da74baed3691d08482292`  
		Last Modified: Thu, 12 Nov 2026 00:47:55 GMT  
		Size: 145.9 MB (145923091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff7138818bc28b7e90b322a5e8d6aadac1bac1c5e0b242e842680ce3b3b8b83e`  
		Last Modified: Thu, 12 Nov 2026 00:47:54 GMT  
		Size: 82.6 MB (82569529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1e0907a59f4e366f07692fea146eaf5ed7759a8e1880b288e73c039f1d0837a`  
		Last Modified: Thu, 12 Nov 2026 00:47:50 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:981acd6dc7c4a3884db6f8e4d38e75737d225e1cd4fa01c2e81f49c4ad773bc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7510616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f581422627daeebc3142edefc5825782507c4b08f67954dbd7b1370c2f6b6bfa`

```dockerfile
```

-	Layers:
	-	`sha256:51070f2ed0da618bb653380958dc5861d2af0aeea86518aa0f73383f951ae0ba`  
		Last Modified: Thu, 12 Nov 2026 00:47:50 GMT  
		Size: 7.5 MB (7496277 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a990a8582720d818158fa329511b1c5be122ae40891160f1c58ef81776c3f809`  
		Last Modified: Thu, 12 Nov 2026 00:47:50 GMT  
		Size: 14.3 KB (14339 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:c25f7fa9c7b28bbb2d2aca21d35e6d43f0f531c611bf1780afab5730cff13421
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.8 MB (274792891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52418d61ba4a58cf0ace5e4d61860958afc75a379e5ba55b4304f2bf481e0553`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 01:02:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:02:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 01:02:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:02:38 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 12 Nov 2026 01:02:38 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 01:02:56 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 12 Nov 2026 01:02:56 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 12 Nov 2026 01:02:56 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ceef40675e96941018e565e14c4a3fcd366fc88009a63e263ec17a8455d5f84`  
		Last Modified: Thu, 12 Nov 2026 01:03:20 GMT  
		Size: 142.6 MB (142621034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:665545c01b76df76279761321229315f17030505ed49af5feaf16cac3c974e8d`  
		Last Modified: Thu, 12 Nov 2026 01:03:19 GMT  
		Size: 82.4 MB (82392611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15e24026e75a8ce4897579f9afc812555b81054cf1665728a21039cd6158b78f`  
		Last Modified: Thu, 12 Nov 2026 01:03:16 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:c4ca140c3e19a9313035f86ca6bb809d28239db2a9c59f19d77099e445d0f743
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7517745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e656651ef64a1152c58158b0b55700c1b2f9d27ccc47be12fdcb2e2a38fd6bdb`

```dockerfile
```

-	Layers:
	-	`sha256:7d09b3baba2125ecc9601c20bdf9cad2208f8c43bb4820b8ba6b34bc06a53060`  
		Last Modified: Thu, 12 Nov 2026 01:03:17 GMT  
		Size: 7.5 MB (7503288 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e277974ee270f6476be06af2222d75a014d548ad64e74622ad1fe59dd4c46ed8`  
		Last Modified: Thu, 12 Nov 2026 01:03:16 GMT  
		Size: 14.5 KB (14457 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:5d37c1a11a5c9e00ef3195ed4506b5da3851feb9575f34ac625ab806c74a0733
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.5 MB (273494758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ce08c840ef1381d4764e2cfea17844429bf2a40b5b8b2f62f4971837c867d4b`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 07:49:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 07:49:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 07:49:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 07:49:59 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 12 Nov 2026 07:49:59 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 08:00:11 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 12 Nov 2026 08:00:12 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 12 Nov 2026 08:00:12 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:9acf5fc430af42e0444193402206b9d2b5c2c4692602efa65ff7c784c52790c2`  
		Last Modified: Thu, 05 Nov 2026 06:18:00 GMT  
		Size: 53.2 MB (53225589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2433a0ff0223d77927de812f1db2ed5c66a0946948c65bcf9ed21abbe7827254`  
		Last Modified: Thu, 12 Nov 2026 07:55:07 GMT  
		Size: 132.3 MB (132272152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9455527f7f78aca240c4a32c90e388bc1f065d785c62d21a73c6120b7e2c6f62`  
		Last Modified: Thu, 12 Nov 2026 08:01:18 GMT  
		Size: 88.0 MB (87996370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77f3b1b954a1f41789a6594c5b1a7d4cecaa60a9655dc6486ffe912cc6f3fdff`  
		Last Modified: Thu, 12 Nov 2026 08:01:15 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:3c1959d20e9cd94a5903d7ccee764392b5c28d9d911bda6ec6ccfefc361cf0bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7513220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ab64e02bb1f9a2180a00d0523529f24ed4a728a4dc83e8d90aa1ef54d12bb9a`

```dockerfile
```

-	Layers:
	-	`sha256:b282870fbbee4171fcf38c7e3bb84b3d3ddff17116a05dddaa5b9aec420862d9`  
		Last Modified: Thu, 12 Nov 2026 08:01:15 GMT  
		Size: 7.5 MB (7498833 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:af9a105b2372fc2f987b5ed7899853637f603e197b1f3a22c6ccdc882d759ef9`  
		Last Modified: Thu, 12 Nov 2026 08:01:15 GMT  
		Size: 14.4 KB (14387 bytes)  
		MIME: application/vnd.in-toto+json
