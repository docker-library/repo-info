## `clojure:temurin-8-tools-deps-trixie`

```console
$ docker pull clojure@sha256:941876c5a7dc29605bfdf01bf92312ee13110ea314128eeb7099ac8304d016ca
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:46039555213d32b8a83b1564ce0c5df5d9dfe413e5a874a24ea8166c886312d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.2 MB (187190684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:369fc0f9b0e3e11d4c6757b79627c246b4a0ec386bcd5927a7ab45f748f7f1ed`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 00:45:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 00:45:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 00:45:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 00:45:29 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 12 Nov 2026 00:45:29 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 00:45:46 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 12 Nov 2026 00:45:46 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 12 Nov 2026 00:45:46 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bc8801b5018e870addd537f53fe7bb2aae8f07c6bc6b7400f972dbeb0cc5fd6`  
		Last Modified: Thu, 12 Nov 2026 00:46:05 GMT  
		Size: 55.2 MB (55207905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dc4007ec920344331ec7151555c1f0aca3613a07c948d1f4873e1d8195e48d4`  
		Last Modified: Thu, 12 Nov 2026 00:46:06 GMT  
		Size: 82.6 MB (82569625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:247730881a98b2a1aa76aa51d374aacc5ee76f6e9daaafd33898f311ea3f4c2c`  
		Last Modified: Thu, 12 Nov 2026 00:46:02 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:d561a189c15daa06e7988846ca2942007bdadfefc16840935a8d166d0fc83418
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7611445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad749b377c28c3ad35a1a323c340b6a36253ff7b571483dc6991467ffe94a94d`

```dockerfile
```

-	Layers:
	-	`sha256:6ba7d58ee6c806ec2e4c4f9bf1fabfc0ceb7986d7966b83332b64e7c38c85544`  
		Last Modified: Thu, 12 Nov 2026 00:46:02 GMT  
		Size: 7.6 MB (7597121 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c34cc3b0b07a4cf7bbacbc84ff5eb5663b9d876491406ea33bc31ca0a0ae7fb5`  
		Last Modified: Thu, 12 Nov 2026 00:46:02 GMT  
		Size: 14.3 KB (14324 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:63fb7ee1a6c9557395ae974e500ba77e03933c383c4e30cc6f5b7d88ba826b4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.4 MB (186441909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ee590ed0f685b9a381531d2889ea9cdfc49d9633c707ed8ef0d6488d397efe5`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 12 Nov 2026 01:00:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:00:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 01:00:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:00:50 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 12 Nov 2026 01:00:50 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 01:01:10 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 12 Nov 2026 01:01:10 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 12 Nov 2026 01:01:10 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdb177a57d2d86ceaa1a371c943a172af3b713f989f2a7da64909416ae812e87`  
		Last Modified: Thu, 12 Nov 2026 01:01:32 GMT  
		Size: 54.3 MB (54270347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fe48d287de180d73fcdc4dbf26e8a8389f4d542116721dbadcfc05bcdaa0f1c`  
		Last Modified: Thu, 12 Nov 2026 01:01:32 GMT  
		Size: 82.4 MB (82392310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f201720d986c7039ec0a9346650eff8c07718831a065ea91b77aa5a89dc1439`  
		Last Modified: Thu, 12 Nov 2026 01:01:28 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:c5130c7539d4e233f296e06742e30593d2bbf8ae401c4acf5325c7cab0fb30fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7618654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa23ee1b3d4ebafcced7126d47d0a4a34b4aa13b82e16e79a2b6f3c49da972aa`

```dockerfile
```

-	Layers:
	-	`sha256:c5353d0f026dfdebef134aec4987ca6677003766b22ea15f6f17184fd2e58d5a`  
		Last Modified: Thu, 12 Nov 2026 01:01:29 GMT  
		Size: 7.6 MB (7604214 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c85d98f65ea6a28f5f88fe2526a67b220289d80e467d07a3f5f9cd9b8417e9c`  
		Last Modified: Thu, 12 Nov 2026 01:01:28 GMT  
		Size: 14.4 KB (14440 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:2cd526de17bd14de612886414a73e503b3cdd05086d5101a5feef2f702680c19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.9 MB (193912355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfcf3a9dca7802314b8cbe76829419b51e165763d9b9deafc492799460611135`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 00:13:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:13:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:13:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:13:57 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 00:13:57 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:14:49 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 00:14:50 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 00:14:50 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:9acf5fc430af42e0444193402206b9d2b5c2c4692602efa65ff7c784c52790c2`  
		Last Modified: Thu, 05 Nov 2026 06:18:00 GMT  
		Size: 53.2 MB (53225589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35a09b36ba0baebb69d83b8260bd9441e8e00c0b89f14b069d246e57d2f6116a`  
		Last Modified: Tue, 10 Nov 2026 00:15:36 GMT  
		Size: 52.7 MB (52689142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffdd389c652111979e3ff137e57f423ee76853c3e5b7601c936d64f19b56ffa6`  
		Last Modified: Tue, 10 Nov 2026 00:15:37 GMT  
		Size: 88.0 MB (87996977 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e3defc0ee0d67ae4d813d31daccc3f168bd4fad2d67418426828c1f81e8f51b`  
		Last Modified: Tue, 10 Nov 2026 00:15:34 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:c511f334a390907ec56c5d599c2329fe8eeecd9803e7bbadd38faefc5eab0ce8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7616504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f8f835a83a34f360396a1cf52039826df46c3c9ba1f13108180ac4ccad003b0`

```dockerfile
```

-	Layers:
	-	`sha256:0f85a1ee2a2bba8f4f7d714ab9dbeb5976e7f50539367cc089d4c27aa154858b`  
		Last Modified: Thu, 12 Nov 2026 07:38:54 GMT  
		Size: 7.6 MB (7602133 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8e0ccccba30e519d11718997ac6210f32c3b65c763e2b86b5ea135ddbb59b830`  
		Last Modified: Thu, 12 Nov 2026 07:38:53 GMT  
		Size: 14.4 KB (14371 bytes)  
		MIME: application/vnd.in-toto+json
