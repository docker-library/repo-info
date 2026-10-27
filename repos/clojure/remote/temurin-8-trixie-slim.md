## `clojure:temurin-8-trixie-slim`

```console
$ docker pull clojure@sha256:80979136ab8bb072cf1328d7a9ed1e80ae9c7f1a2cbc7d1f92a930621d8c007f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:794b50cbbc202fa4e8b62e9e1d22f00a74b3889d89c13cab24840c0519aeb40f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.0 MB (154025985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8d83ae8ddd430856b61990ae19e4badb6808e006ca9c0b5402e12393be38aab`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Tue, 27 Oct 2026 00:46:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:46:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:46:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:46:24 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 27 Oct 2026 00:46:24 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:46:40 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 27 Oct 2026 00:46:40 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 27 Oct 2026 00:46:40 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:038f7a2328e6002cde0d0f99f846cab953a5ae06240795b75249f0413338a3af`  
		Last Modified: Tue, 27 Oct 2026 00:46:57 GMT  
		Size: 55.2 MB (55192247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdf505f8cf98943fd08d910ad534b15969f607b404a6a971ba91e4e042aee9f8`  
		Last Modified: Tue, 27 Oct 2026 00:46:57 GMT  
		Size: 69.0 MB (68989511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ca1a4fa2bc56a3e0eab7d070daa0f7f24fd07f8efefc3d85f2c8366cffb4834`  
		Last Modified: Tue, 27 Oct 2026 00:46:54 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:03ccac06de0d21bf108555a06befeb20bf9b08809bd4044885a5ccdb4f508d74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5396801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73cb53ff19e93f4e5ebc22024efe25a1b36c5af088d678e629344f4c64381146`

```dockerfile
```

-	Layers:
	-	`sha256:f8ac3823524bfb7a6da037ceaab09f300d815dc6bb88baecaeb8348c8c8c7a9c`  
		Last Modified: Tue, 27 Oct 2026 00:46:55 GMT  
		Size: 5.4 MB (5382419 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3fbc245829a39bb0ca79c53fcdbc3c3ad64ed573fd34eb9a5f36800b9ce3b8e9`  
		Last Modified: Tue, 27 Oct 2026 00:46:54 GMT  
		Size: 14.4 KB (14382 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:07c8c6386c0cc16c3b8f63e36998af9bda73d02cadcb53f38597d8ef17cefbff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.3 MB (153260552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5585cbc00d5ed1128f553e29a50554e83bc78961787b399cf912dd41bd8280c`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Tue, 27 Oct 2026 00:46:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:46:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:46:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:46:20 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 27 Oct 2026 00:46:20 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:46:38 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 27 Oct 2026 00:46:38 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 27 Oct 2026 00:46:38 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:794526581e2e53e2330888271298ab99d1b0b3a40882447fc0e369782945ba72`  
		Last Modified: Tue, 27 Oct 2026 00:46:58 GMT  
		Size: 54.3 MB (54254273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72939c20c91bae642ada7739cacc390eb9e88985e74d91679b4721882082149c`  
		Last Modified: Tue, 27 Oct 2026 00:46:58 GMT  
		Size: 68.8 MB (68805155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abc9374df987554647ea1c1f7aa78a3b7e0dc60428704c2053f7d7d8840562a3`  
		Last Modified: Tue, 27 Oct 2026 00:46:55 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:23971d93502ab570b87bdb9d7391fc212b02bf15ba22dd13c132ef456d6b8591
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5403380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c2a74c28bdb174875184b4cd98bbdfad7ffe862eb5a41a9654fa65e0268451a`

```dockerfile
```

-	Layers:
	-	`sha256:c8628019c48271b1a31c86412a196ae9f0638519c4c471705c4ecfa9048864f6`  
		Last Modified: Tue, 27 Oct 2026 00:46:56 GMT  
		Size: 5.4 MB (5388880 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7892ea46b3337e1ef674ccf089ee260fa25409647437a73f993fa4a904851e16`  
		Last Modified: Tue, 27 Oct 2026 00:46:55 GMT  
		Size: 14.5 KB (14500 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:d3b8630bfaa569a463c684908662e9ecf799becf219d214b5a8e49f072446439
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.7 MB (160738276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a49f35dd79f00924cb354b201c640fb9906924ae0723fcece50525282d7bb4d8`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 09:56:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 09:56:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 09:56:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 09:56:21 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 09:56:22 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 09:57:28 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 09:57:29 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 09:57:29 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:5e4eb9dc9f650fb59b641178db89dd4b48ea020427f346ce7f9d30a6b89bcd7e`  
		Last Modified: Tue, 20 Oct 2026 23:35:12 GMT  
		Size: 33.7 MB (33651935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1707665e295161c0d373ba9cb19ab2051ccf4cf85ea6a9cc4dd9b32e4c024892`  
		Last Modified: Wed, 21 Oct 2026 09:58:24 GMT  
		Size: 52.7 MB (52667127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:054a95213f64658251d19096a41913e7179f13afafe2bd58f572b81c1eb90801`  
		Last Modified: Wed, 21 Oct 2026 09:58:24 GMT  
		Size: 74.4 MB (74418567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2467d0b2899e02ba201a4cf61d63cc49cead2c6c732b00854c0b22a7948dfdb`  
		Last Modified: Wed, 21 Oct 2026 09:58:21 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:77aec07b61b59805cf6cdf8f21e67c17f2bffbe7004b4ae583eca013c4840871
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5401787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a3e4de6e556d47db25d581cf53f79146817f0bf390d54fda042f8fccd9def12`

```dockerfile
```

-	Layers:
	-	`sha256:5cf5ffa9998736d1e90a404e6fa4586a701c16fc85a9a259f20329cfaf28de59`  
		Last Modified: Wed, 21 Oct 2026 09:58:21 GMT  
		Size: 5.4 MB (5387357 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c0fe0747f5a822f7d7a1010111a2bbdf33059d136aff8f48d645683c61cf108f`  
		Last Modified: Wed, 21 Oct 2026 09:58:21 GMT  
		Size: 14.4 KB (14430 bytes)  
		MIME: application/vnd.in-toto+json
