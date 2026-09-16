## `clojure:temurin-8-tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:dd3b64aff0a0bb6b6b8d09e8aac54b7a9008e8137e7da03bb9bf9cae90a5fb23
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:00f958cba3ba12531c25aa3e0a73696fc9a71494676390052f4238ded04d0f91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.3 MB (159288156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dbcc787074404f6fc64cd8029e728bafa89899f93afc5a11c32f1e3dbca3acb`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 04:32:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:32:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:32:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:32:09 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 16 Sep 2026 04:32:09 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:32:27 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 16 Sep 2026 04:32:27 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 16 Sep 2026 04:32:27 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67f9e8421b179d4afb37f41c71dd12503d04feec667cbd0ddc750dc741c658c6`  
		Last Modified: Wed, 16 Sep 2026 04:32:45 GMT  
		Size: 55.2 MB (55164403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c6e52ba646f3390e47cca9ce40a15e6f3fa3347974d151108ae2aed20ad3fad`  
		Last Modified: Wed, 16 Sep 2026 04:32:46 GMT  
		Size: 74.3 MB (74330449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f87e825530e9d1d6422162cb97f7f6b622f8f5830ab7478b8599d478e8abd1e3`  
		Last Modified: Wed, 16 Sep 2026 04:32:42 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:0f707ab16be8205353008a04a0e39a161b88f00dfb3411fd3062c4dcf70cd2f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5392376 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c147bff7d5b454fcc900cdebe40ef32acb614af1d114715ebdcaf224a0941bc`

```dockerfile
```

-	Layers:
	-	`sha256:ff567298c566465496f4d8fb55772d60493a665f39da249d86efbed7f36fae7c`  
		Last Modified: Wed, 16 Sep 2026 04:32:43 GMT  
		Size: 5.4 MB (5377994 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:340133a6bbe906c9513343a014ac42d57fe0a1b4969fed90ee677f826c532ce7`  
		Last Modified: Wed, 16 Sep 2026 04:32:42 GMT  
		Size: 14.4 KB (14382 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:7997faf5715b8b792053c1cf3ba2a2d40a2be52c1c39c6bc42720bfd86e4d432
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.9 MB (158898039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9c25ea8c9bb4c91ad40c97d2c80aec591ad7100616e8cac600ddd645c97d380`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 04:32:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:32:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:32:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:32:28 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 16 Sep 2026 04:32:28 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:32:48 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 16 Sep 2026 04:32:48 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 16 Sep 2026 04:32:48 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b1ccfa0e8542bdcfbd2b582fa3fa0fa1f2823e32c014edf3cec9a88c5612d2c`  
		Last Modified: Wed, 16 Sep 2026 04:33:06 GMT  
		Size: 54.3 MB (54262743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fc0ba90092141855cb172bf56b0a6220043b458783305713c152e40a894cbe1`  
		Last Modified: Wed, 16 Sep 2026 04:33:07 GMT  
		Size: 74.5 MB (74475067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09f075168f56a63e2b4b08a9cd3ee1df91a1365b26164dddfbc22aab628f5d94`  
		Last Modified: Wed, 16 Sep 2026 04:33:04 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d0380833df789a321ff653dc060bc00412e9c94549d321b06c2ca386e595a996
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5398955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3162215819917aa470e234ed3383dc0bd0fe7efd736b89d4fb7f974828c7bcbd`

```dockerfile
```

-	Layers:
	-	`sha256:1d136c7e1a830a516a6e8ca2132d45515578453c3d84780de848000634c0e575`  
		Last Modified: Wed, 16 Sep 2026 04:33:04 GMT  
		Size: 5.4 MB (5384455 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aab2b49ec80664019be63c593dad2b247362ae42162ae3ae3e779758b269727b`  
		Last Modified: Wed, 16 Sep 2026 04:33:04 GMT  
		Size: 14.5 KB (14500 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:50c913f4bc21175c4470b23b1131f0a1799f5ce1c6c1aa9119fad0a72a609540
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.9 MB (163862526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40d1db86d292a65cdd67228f2c27fec3e2e81a43be5de7fba1b659cc00f5c51c`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 00:07:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:07:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:07:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:07:13 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:07:13 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:08:35 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:08:35 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:08:35 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0453cc3a6b1885278dd1f96ec6fc66af9ff6c8d65f1586e3e0176be25e4fe71d`  
		Last Modified: Fri, 04 Sep 2026 00:09:25 GMT  
		Size: 52.7 MB (52670663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de67950a8ab369017a9fff02f71a75294d7da5bf7f4fb5509ea5905a58de17ff`  
		Last Modified: Fri, 04 Sep 2026 00:09:26 GMT  
		Size: 77.6 MB (77575755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18073a4ca93bc70d0c92c1030b126d02330d36acc8888d3ebb95022de420ad28`  
		Last Modified: Fri, 04 Sep 2026 00:09:22 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a43bfdd708e58bb9f4a1230bb5c382c3d53dea552e3edcf2dd7d76aef89e9185
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5397318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ea0f6fb1351680c449a4756d833223cc536a428bf05c38382e2fa5ddb9f9fe4`

```dockerfile
```

-	Layers:
	-	`sha256:145812c14d19e8cfdebc415eed22dc2204b733e52be8f496325d9a16dd62d81d`  
		Last Modified: Wed, 09 Sep 2026 10:30:35 GMT  
		Size: 5.4 MB (5382888 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:35d1645cda053e9b451d58f40252c6417f0cf4f5991feb65a2dd83c9f9e075e2`  
		Last Modified: Wed, 09 Sep 2026 10:30:34 GMT  
		Size: 14.4 KB (14430 bytes)  
		MIME: application/vnd.in-toto+json
