## `clojure:temurin-11-tools-deps-1.12.6.1673-trixie-slim`

```console
$ docker pull clojure@sha256:06b9df3ea8b9d80617b790a7fa1ee9c287cfd1758f7e2da80a575b2c198b6bfd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:34fb6b38b426f97a878cd6ff0fe6e6087abf4335c3b3f2d842e49ad663fb6e27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.7 MB (244698017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a4301f10fead1e7f9928b0b37190cc95ad64cf4bedeb2e8c46a582e2b9e5638`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Tue, 27 Oct 2026 00:28:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:28:19 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:28:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:28:19 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 27 Oct 2026 00:47:49 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:48:05 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 27 Oct 2026 00:48:05 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 27 Oct 2026 00:48:05 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7bd6667a3d9c64267808b2cb8d54865bde9cc114d7ce1afae9b27fc688375f4`  
		Last Modified: Tue, 27 Oct 2026 00:29:34 GMT  
		Size: 145.9 MB (145864282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5d258a2494a775db66eaf0cb7e0a3d9f0dd8e73cea0b728e5711966e0da88df`  
		Last Modified: Tue, 27 Oct 2026 00:48:24 GMT  
		Size: 69.0 MB (68989509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abfe16e57aee56b912798a9ce9a732cba0cae4a113111fb1cd4170016dfdcb24`  
		Last Modified: Tue, 27 Oct 2026 00:48:22 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:85969b0549476b6319d1c3430f9ae04948c0f4446f4cc8bb969d05d1ed63ee49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5295023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f5fb06b645f86b23696d74b9e9a21e85305731ffa82832e0f395f3401341a32`

```dockerfile
```

-	Layers:
	-	`sha256:64b6ee7c5934b19711049f82da187105105bbad27a92fcddc045e28d323ae89f`  
		Last Modified: Tue, 27 Oct 2026 00:48:23 GMT  
		Size: 5.3 MB (5281581 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:565fd236b48bf4a4e18a7589afaa5674dcb74ec2bb989a6771ecaca1e4512880`  
		Last Modified: Tue, 27 Oct 2026 00:48:22 GMT  
		Size: 13.4 KB (13442 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:94b5f7a9c016ed17150fb7efb5da01be6306f239451074059aa18feb8916900b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.6 MB (241582802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73b9300afaea906b5f1749f55575cb2684c7de3213bb5055cae9e84d88b3489d`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Tue, 27 Oct 2026 00:47:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:47:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:47:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:47:31 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 27 Oct 2026 00:47:31 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:47:50 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 27 Oct 2026 00:47:50 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 27 Oct 2026 00:47:50 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:468929a409da1e430f80940b3f56749e827d706b5daf327ff28099852be8df6b`  
		Last Modified: Tue, 27 Oct 2026 00:48:12 GMT  
		Size: 142.6 MB (142576548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:878909492be6f59bde22527048775f15144497b314091cca09ab0b0c293d0058`  
		Last Modified: Tue, 27 Oct 2026 00:48:11 GMT  
		Size: 68.8 MB (68805129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcf253603a907b189a1f8c1a12ebe440cb59a9878fb52eb82f1b8112a5c53e69`  
		Last Modified: Tue, 27 Oct 2026 00:48:08 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d3347dcca83c532250fc2013343abdbff8dd005069f4a6c287dda8addf6fab94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5302475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:390bd168872b6cc81a59485e4a60f5b51d4413316272eed077f79cb4001b65b2`

```dockerfile
```

-	Layers:
	-	`sha256:2eefb7953cc4c4bcd76bc7701e970e2eb77973dca27c57068c0565cc22b17921`  
		Last Modified: Tue, 27 Oct 2026 00:48:08 GMT  
		Size: 5.3 MB (5287960 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:83db381a11920fe8e698e1f1484a5d17016111e56293657e5461f2477b8ac879`  
		Last Modified: Tue, 27 Oct 2026 00:48:08 GMT  
		Size: 14.5 KB (14515 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:8a168439d38a6594eb00ac3ac5009d465c1385e8c5390e32e53d115221584ac5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.2 MB (241166095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f9d33cad1e503e9f7656eedf8db68a4bee9a4090cdc6de44c11955c62a4cba1`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 10:04:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 10:04:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 10:04:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 10:04:16 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 10:04:17 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 10:14:33 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 10:14:36 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 10:14:36 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:5e4eb9dc9f650fb59b641178db89dd4b48ea020427f346ce7f9d30a6b89bcd7e`  
		Last Modified: Tue, 20 Oct 2026 23:35:12 GMT  
		Size: 33.7 MB (33651935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dcac8f1fb37221206ec9e42f91e7f9060981927dfbb2129eed28dc10e1790b7`  
		Last Modified: Wed, 21 Oct 2026 10:10:39 GMT  
		Size: 133.1 MB (133095132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2296a7d9c884563fd5ec1b8beb11bdb982cf17ff41ba0c76ca95629d44ae7d4e`  
		Last Modified: Wed, 21 Oct 2026 10:15:37 GMT  
		Size: 74.4 MB (74418383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cfffb8899435e9f449f1ad667e8ba3fd5af75a056cadee7fbc15a17e382b72e`  
		Last Modified: Wed, 21 Oct 2026 10:15:35 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:933ec0be340f799c3a4a80ecff9892462a12e52ccc5201167713235057a7069f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5299754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08db73db2a9bc651bff8b94adc72af391170c6b827f6e9d4f86c1b8a323218ee`

```dockerfile
```

-	Layers:
	-	`sha256:4f0b10dc0299f0308585f71f1763bd9892d9009695bb1cbaa31a78a6c57955df`  
		Last Modified: Wed, 21 Oct 2026 10:15:35 GMT  
		Size: 5.3 MB (5285309 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:352fe87829645bcf09a12cfca7d52f6751f7a724a53f4d2fbf7182729667be4e`  
		Last Modified: Wed, 21 Oct 2026 10:15:35 GMT  
		Size: 14.4 KB (14445 bytes)  
		MIME: application/vnd.in-toto+json
