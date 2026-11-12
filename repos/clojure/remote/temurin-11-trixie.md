## `clojure:temurin-11-trixie`

```console
$ docker pull clojure@sha256:f6b01424e5c55700702cc0bce030bdd63661d39513a95b18202d2ef49154ad87
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
$ docker pull clojure@sha256:07bc482d0211215af94d86484fd89e9326d65328df08d9851d5560294cca92ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.5 MB (273495807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fb99844f15c90e198acd5efc4b5a3bd4d8eafb10a1abdaefbe44e2ac57e72ed`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 02:11:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 02:11:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 02:11:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 02:11:35 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 02:11:38 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 02:23:15 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 02:23:15 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 02:23:15 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:9acf5fc430af42e0444193402206b9d2b5c2c4692602efa65ff7c784c52790c2`  
		Last Modified: Thu, 05 Nov 2026 06:18:00 GMT  
		Size: 53.2 MB (53225589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e735e848f47e2379d271031644498682189f3d1be36f3a9a665e3f72936b6232`  
		Last Modified: Tue, 10 Nov 2026 02:17:05 GMT  
		Size: 132.3 MB (132272184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17c027412464f0d6fb5f4adc4759a7f53ebd1f0a76352ac61352b1a5c2a048f0`  
		Last Modified: Tue, 10 Nov 2026 02:24:04 GMT  
		Size: 88.0 MB (87997385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd798725688cf16e22ed86073a72bebec9b48771db161e5f7294e0399ac00028`  
		Last Modified: Tue, 10 Nov 2026 02:24:02 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:5794bfed2e7334804853fea4be9c27fb0be9d6d1488d1580cabbba65ce739daa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7513220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6089dd2f6988cf9f3650c61a9d4d6cb6a1cc0182179e39a2cf8e9200135dfa55`

```dockerfile
```

-	Layers:
	-	`sha256:b877e82fab42e5a3b2150b1dcdfb4bc1208f023716a2e3fe174269ab56ef44b2`  
		Last Modified: Tue, 10 Nov 2026 02:24:02 GMT  
		Size: 7.5 MB (7498833 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:565c563f097ff77280072b5f5df8bb250dbbe9cfb7132276514d9d4d06897931`  
		Last Modified: Tue, 10 Nov 2026 02:24:02 GMT  
		Size: 14.4 KB (14387 bytes)  
		MIME: application/vnd.in-toto+json
