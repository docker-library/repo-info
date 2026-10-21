## `clojure:temurin-8-trixie`

```console
$ docker pull clojure@sha256:817e36d51b925e7fc2f283a03a3c9766ae98e664d518709093a41b1b2319a6b1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:65b80e80aaef00502872fd36c9a00e5e0ed78a3420ee6381b2cb036be8b59155
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.2 MB (187156528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61eb6a63a3dfbdd280b0f98a9aba2009a1ef883ecde0a6d1d1686f22cd7f41c5`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:15:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:15:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:15:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:15:25 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 01:15:25 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:15:43 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 01:15:43 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 01:15:43 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:8d0037029946d2c6dabce18eceda79c533c5797ed1ee86f94084cb8cddaeea91`  
		Last Modified: Tue, 20 Oct 2026 23:30:54 GMT  
		Size: 49.4 MB (49393622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8e5d2df7777aef3c80638f15468178d647b28cc310b9334a2c81e8eeaf61bdd`  
		Last Modified: Wed, 21 Oct 2026 01:16:04 GMT  
		Size: 55.2 MB (55192249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e219a9222584722a3280dc6a6ef40743294fad401249403e5edf570e211e31cd`  
		Last Modified: Wed, 21 Oct 2026 01:16:05 GMT  
		Size: 82.6 MB (82570011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b6ed92c1f1390b4cf559fffec96594215f3901371deeacd42036338761645db`  
		Last Modified: Wed, 21 Oct 2026 01:16:01 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:b6ab7beb5c5e8ef35fc3043802022c477a48a6bf5a0069efacddce5d0f0a86e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7612221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a0aba582e6c11476b5062a55fb61701d78c724ada9c2cbb6ccae573efc4983c`

```dockerfile
```

-	Layers:
	-	`sha256:adca73e1ddf5c2c0ab2888a14a0cbc8a367887bba628fada046ee217cd25fd48`  
		Last Modified: Wed, 21 Oct 2026 01:16:02 GMT  
		Size: 7.6 MB (7597897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bddb7b8238a3294171c1cb1fadf48d9ca1073ca1405e2234f144720b391ca3e3`  
		Last Modified: Wed, 21 Oct 2026 01:16:01 GMT  
		Size: 14.3 KB (14324 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:96adf041ac9bbafb40c6e10c447db8798e794e43ae6f43c27a5112fd36fb6fd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.4 MB (186409762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed9692d31b44395ca21aec0abf8aeb6479fdea4cbb8a99d043b04928b4044f33`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:21:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:21:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:21:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:21:40 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 01:21:40 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:21:58 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 01:21:58 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 01:21:58 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:229b15d702220d963eaa48bcd8eab0ee7aa8f52996309c59cf44fce7deec3869`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 49.8 MB (49761602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:249d128e749e4257185cbe5f733dca39411e8c1911cbd1d8ea3c57246e2a70c6`  
		Last Modified: Wed, 21 Oct 2026 01:22:18 GMT  
		Size: 54.3 MB (54254267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fbea960f859f65532d34cb8863ae219e2fbdf89d71a3aab7f01da1c41809fa1`  
		Last Modified: Wed, 21 Oct 2026 01:22:19 GMT  
		Size: 82.4 MB (82393247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb21436162a6e585ce3fe83b697286aab7566d51d0dfaf035b7ca1de4912cc32`  
		Last Modified: Wed, 21 Oct 2026 01:22:16 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:9572c2ff6f03cfb72b4b21f33d05db9fd2c13a4994f5dcfb3fbae621e5132c3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7619432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:287ef77f75ead4806c18e94706ba6c146ca0e4b7e78204a21051ba79079e78c4`

```dockerfile
```

-	Layers:
	-	`sha256:7b67c8be0a722b8f7d0894515a9b03fb65876ec30b2111da55e26e2c1a508579`  
		Last Modified: Wed, 21 Oct 2026 01:22:16 GMT  
		Size: 7.6 MB (7604990 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d401b637750759da51eaa3d05e1a347965806185eb331f9796ab5850060e37d7`  
		Last Modified: Wed, 21 Oct 2026 01:22:15 GMT  
		Size: 14.4 KB (14442 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:28470080cb27fec03da1fed8db42a4eb8a00f668d6c55bba3c16837e002b73ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.9 MB (193872626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea2b3ee1a5d0ac910527404f5f539ac1e8faa24c4f0fbd309c53141b889911ed`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 09:53:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 09:53:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 09:53:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 09:53:52 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 09:53:52 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 09:54:59 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 09:55:00 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 09:55:00 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:7e28d103a30c4298a73f4f08206c12912fd590fd7ccd17f15fb979ae48224ee4`  
		Last Modified: Tue, 20 Oct 2026 23:35:13 GMT  
		Size: 53.2 MB (53207578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7b4f57d19c91cd2be6fc6bca93c05d753c91643eb4abc5c6ed73c78d398e6a5`  
		Last Modified: Wed, 21 Oct 2026 09:55:56 GMT  
		Size: 52.7 MB (52667105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d162441e21832398cdd13fb2bb6e193344c810af1b9a585004e22476ef8f7a4`  
		Last Modified: Wed, 21 Oct 2026 09:55:57 GMT  
		Size: 88.0 MB (87997297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed7c2a82e37c119958cda53bdb9cdb0ed25c983a6fdb78868d6d951ec9878930`  
		Last Modified: Wed, 21 Oct 2026 09:55:53 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:d7a1897acdaca0f6c0389927803289d8872f9a1d786100550b6312ff7390d34a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7617283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a6c1991d2ee4b0fdb66353fcb00e3e34a9db03098e5b05276b2225ad57c98cf`

```dockerfile
```

-	Layers:
	-	`sha256:a87a9150542c835c68af7e37398a67ba585577cfae19d05590d053a87a4d0952`  
		Last Modified: Wed, 21 Oct 2026 09:55:54 GMT  
		Size: 7.6 MB (7602911 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:86751ea0b70e5218dc8f6b255c1e5acb46a37101d6a0bba0a65f736d42eb98b8`  
		Last Modified: Wed, 21 Oct 2026 09:55:53 GMT  
		Size: 14.4 KB (14372 bytes)  
		MIME: application/vnd.in-toto+json
