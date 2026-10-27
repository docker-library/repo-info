## `clojure:temurin-8-tools-deps-bookworm`

```console
$ docker pull clojure@sha256:3c0f853d2160ba1c1e16738ff8584fb90105b9433694b22a14e184b7aed6e408
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:ca67609000440e06b7847385178eb0e03f915cffe8fd8b5c9c4df0a2c79757f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.7 MB (181711973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2440ff927fd714fb2ebda784095d59da5cd33462975ad5d924fd493a6aaa7d6`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Tue, 27 Oct 2026 00:45:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:45:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:45:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:45:57 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 27 Oct 2026 00:45:57 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:46:12 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 27 Oct 2026 00:46:12 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 27 Oct 2026 00:46:12 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:8a051559ff62acdfa1af9916c3c67673d946bb71f81cb8f30c565fa647cb6a77`  
		Last Modified: Tue, 20 Oct 2026 23:30:05 GMT  
		Size: 48.5 MB (48522084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bad42862bc332340e80ed21ec285b19d9c97d935df0928ae1cdffee442a80e62`  
		Last Modified: Tue, 27 Oct 2026 00:46:31 GMT  
		Size: 55.2 MB (55192273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d899cb4fe306fb877cdc81fdf79fd8c1e4e985e0567cec6a02daac7de3dae8c`  
		Last Modified: Tue, 27 Oct 2026 00:46:32 GMT  
		Size: 78.0 MB (77996968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b7c0a7caec3013d2f76055fb1d561f27ef27e42ad2839eabc2e60394f023d36`  
		Last Modified: Tue, 27 Oct 2026 00:46:29 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:6524d992b4a4e9318992ad6c483885a28c2276f57e6a7a88650ebc37bc1d4d05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7513270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9104aeb185fd503b0a826f79a31e1a1493a02d140e57f01305f92d8fb8568c6c`

```dockerfile
```

-	Layers:
	-	`sha256:93dc9170946ae8cde188b153affcd6894b3bebbcf926dc0e80de51380469b256`  
		Last Modified: Tue, 27 Oct 2026 00:46:29 GMT  
		Size: 7.5 MB (7498923 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac614246edec30a10a7060348247c800a449d41b249495e592dcece1e9195514`  
		Last Modified: Tue, 27 Oct 2026 00:46:29 GMT  
		Size: 14.3 KB (14347 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:4503c9d858c8bdcec864d83faf603bc507caa7dbb58dc942c4b6258b93459bf5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.7 MB (180650821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e71a4174917d12a85ab8979018eb53911ac44c00f22ac18dc7cd523d1c94ff44`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Tue, 27 Oct 2026 00:45:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:45:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:45:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:45:38 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 27 Oct 2026 00:45:38 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:45:54 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 27 Oct 2026 00:45:54 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 27 Oct 2026 00:45:54 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:a97cb698362f4b23d085b953f3106766a2137816fe5e17a99fdc3e48bd37e810`  
		Last Modified: Tue, 20 Oct 2026 23:29:54 GMT  
		Size: 48.4 MB (48403111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50cd7fadd113f8b9d819be8932ce5379e52fb161a70e817cee6fe8fec9cbfa41`  
		Last Modified: Tue, 27 Oct 2026 00:46:14 GMT  
		Size: 54.3 MB (54254273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c31422710d24365f391cf703ab44f90d0d59fe691f2953c6671fe202db2d9f5`  
		Last Modified: Tue, 27 Oct 2026 00:46:14 GMT  
		Size: 78.0 MB (77992790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3009c9a7062b0acb5e9766d2a293352e21a99330b31d244b11f5f36d26b2c635`  
		Last Modified: Tue, 27 Oct 2026 00:46:11 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:914a5b0ddb44325fd14c633dbc0976780ff0fffa0458446e11a67626c532fc32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7519852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89b8cc374905b6a003c9809b58d9d5397e53f95821f520d11b7835f61d86346a`

```dockerfile
```

-	Layers:
	-	`sha256:66302f62d4d27c0be10ebd594ada1ccda23b23a6b4450672589898bae2057500`  
		Last Modified: Tue, 27 Oct 2026 00:46:11 GMT  
		Size: 7.5 MB (7505386 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0a1c56799744b2cc886ff41c96feb4a39220139d000dcc953e8e559bdd71b027`  
		Last Modified: Tue, 27 Oct 2026 00:46:11 GMT  
		Size: 14.5 KB (14466 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:6fe22793513a54d6fafe72f8a80e570d18f4e1ed2cd96ae3365f56d605f7a583
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.9 MB (188869200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89088ce7ff2a4d48002b1c7476b9fa264bc6c0307ec3449da9cce099a583d53c`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 09:51:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 09:51:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 09:51:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 09:51:00 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 09:51:01 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 09:52:15 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 09:52:16 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 09:52:16 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:0d8f63583ffe9dea650eb3c2d930ac17764dc3edd73dcc6becb0a476d51e6619`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 52.4 MB (52364741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7577bfc29b635c74d0e90ce0ec2b384fe977eac21b6f5c88056667db606cbe1`  
		Last Modified: Wed, 21 Oct 2026 09:53:32 GMT  
		Size: 52.7 MB (52667155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2de3f4c850d7ceeae3d27abf89ef7b780cf8a0eb087fa53b3102ece7959ea76a`  
		Last Modified: Wed, 21 Oct 2026 09:53:33 GMT  
		Size: 83.8 MB (83836656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa4ecedc147083197dc9dba2a7408d8080ec4ed04ec361cd8173eb8fbb71b805`  
		Last Modified: Wed, 21 Oct 2026 09:53:29 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:aefbc5c18644c269c2ca93585d8f4a1644ea62e371ec855501d8adff7fdea906
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7519904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:456a7a53bff9e6d80c60114aa131244a6a86100c6ae0077daa43897d0f0cedbd`

```dockerfile
```

-	Layers:
	-	`sha256:cb14a98b7f6aec15f69b09c1874621ef16330f03e69f08d047b093c988124866`  
		Last Modified: Wed, 21 Oct 2026 09:53:30 GMT  
		Size: 7.5 MB (7505508 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c252158af6586a16b59103cc83dc36e85f5aefbbcdafe9b5149cc72c3bd558b3`  
		Last Modified: Wed, 21 Oct 2026 09:53:29 GMT  
		Size: 14.4 KB (14396 bytes)  
		MIME: application/vnd.in-toto+json
