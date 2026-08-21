## `clojure:temurin-11-bullseye-slim`

```console
$ docker pull clojure@sha256:e2b54babc9975cd8456eac1b67aa33a4ea0533192e899cf1fa8c5eda954c0ac5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-11-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:1f7fc0d542b7b6e6e835ea45b10a973ff498d62bc3842ae83fddda378cf60b5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.2 MB (232236590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:959ca5864ce068ad822b75d7fa1da2f18ffe708220c2a4216181ef0dad47df09`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Fri, 21 Aug 2026 19:12:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:12:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:12:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:12:07 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:12:07 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:12:21 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:12:21 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:12:21 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:ab75afe6a0f0027cc830f1ca4a2c484e7056871a1adf91bd3a0b73c6ffb517b1`  
		Last Modified: Tue, 04 Aug 2026 23:52:04 GMT  
		Size: 30.3 MB (30259620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc5283e10147589fb619e5a88f5f387a1c42d3e2b47acd73e97cff3cf91b079f`  
		Last Modified: Fri, 21 Aug 2026 19:12:44 GMT  
		Size: 145.9 MB (145861399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a2321ed1e4c060b52c890320d353bd0b8bbf87541f38f6d925588b4e3748387`  
		Last Modified: Fri, 21 Aug 2026 19:12:42 GMT  
		Size: 56.1 MB (56114928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9056beb95d576a2214790768bfc1b997931781e01c9a4288dfc1dc09b29bb933`  
		Last Modified: Fri, 21 Aug 2026 19:12:40 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:51ea442aa350e55ead497c04cd660a5c0cd02e5adf8a91cd8b97b2ac23a4b86f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5356987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bcc4c54b2515f5189596a189aea394327cda5857cbebf75043da45b743be68c`

```dockerfile
```

-	Layers:
	-	`sha256:7ad0ffa4d6eb3b43122793d39065d8aee2b264fabd2103ed65b0fbdba911b6d3`  
		Last Modified: Fri, 21 Aug 2026 19:12:40 GMT  
		Size: 5.3 MB (5342566 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c33b427daf5ca06356a98bad890e690555d746933d486c8128deb5937fda244f`  
		Last Modified: Fri, 21 Aug 2026 19:12:40 GMT  
		Size: 14.4 KB (14421 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:4f944979753c77829f902b9f29c2dcbffa89bcf1ab0f40e0057ac3a8c845e333
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.6 MB (227597466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:326eff08dd00f89e8ff0eb84b85061c76c3f747a13662a37fec0361e3bd33af0`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Fri, 21 Aug 2026 19:02:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:02:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:02:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:02:32 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:02:32 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:02:45 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:02:45 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:02:45 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:93e0ff6a69cbbe5e567bea0ae7560cdd816fd4205541e7cb6b0fd3998b169541`  
		Last Modified: Tue, 04 Aug 2026 23:51:59 GMT  
		Size: 28.7 MB (28748907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8333ec4b4beefbaf6b26e7c854f6a28c30e5672fbddbb231b0ddd41e25dde446`  
		Last Modified: Fri, 21 Aug 2026 19:03:07 GMT  
		Size: 142.6 MB (142566616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9413184f7476d5a3301c87aaae90b8192c46120633958f32e1fcf25c1c75d0e`  
		Last Modified: Fri, 21 Aug 2026 19:03:05 GMT  
		Size: 56.3 MB (56281300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cad5628efeeeee64cb2e68e232a779719afa36007b76e2f49af6714899ea9235`  
		Last Modified: Fri, 21 Aug 2026 19:03:03 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:5dfbe4b603789af1cc32138c38526d145a7e625ab154fc906a4176c525d333dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5363455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d016391c81b60d1ac9b04434f7a7dc497dce9c3a600f4382da5cd8ab52510c8`

```dockerfile
```

-	Layers:
	-	`sha256:cfad6514abe0472e5e3be74710653276f67d607caade6d32aa378a0dcb3bc5c0`  
		Last Modified: Fri, 21 Aug 2026 19:03:03 GMT  
		Size: 5.3 MB (5348916 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5dc8f29a6705c2c0418b958d646d049c8946ceffbcc96402b5163f1a493f6b2f`  
		Last Modified: Fri, 21 Aug 2026 19:03:03 GMT  
		Size: 14.5 KB (14539 bytes)  
		MIME: application/vnd.in-toto+json
