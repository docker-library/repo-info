## `clojure:temurin-8-tools-deps-1.12.5.1654-trixie-slim`

```console
$ docker pull clojure@sha256:1bad1f127c4f4bc9e124d74fceabb3c00ec605ac003ba9d8bbeb7dd78cc57e6b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-1.12.5.1654-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:e4ac7dbd24ac9badc971417c040500c2b0a64cf66096942cdd41f11f6aa0ae94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.0 MB (153950817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:520a6db84388ab3e547f1eeb99a7fc5ffc88f8f969b740315be6b9e87572f256`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:15:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:15:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:15:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:15:52 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:15:52 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:16:08 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:16:08 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:16:08 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c178f6c4646fd7f7e16294f167517cf0aeaea235186978689111fc2b14d0b06`  
		Last Modified: Tue, 14 Jul 2026 02:16:25 GMT  
		Size: 55.2 MB (55198716 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecbf6cf9fc6168ca1f1f7138be107d5cc3bb0ab7fff68344cf8f6c6f231f773e`  
		Last Modified: Tue, 14 Jul 2026 02:16:26 GMT  
		Size: 69.0 MB (68970552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fba9f1451dd55fdd213f2c4d92dcdea53bd7cbae77d46f3e687bfeb2b199343d`  
		Last Modified: Tue, 14 Jul 2026 02:16:23 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.5.1654-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:35fe2005f196513f0a32ed5dca86b32a83e2889468bd9d412c263240b7cfd239
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5392074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a1debb969dd5a752aad81f23328ca93af0ddd65c0191291e174e33b7af7557c`

```dockerfile
```

-	Layers:
	-	`sha256:bd21ac60b5dd7cbc4b9e7440535ecd6a7d666f57b6c3d5eff870b9c1fd2a2775`  
		Last Modified: Tue, 14 Jul 2026 02:16:23 GMT  
		Size: 5.4 MB (5377692 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bde8ecfe547e2d20badc5e028f9a422716f49efb9e50101228bb986fba1e3952`  
		Last Modified: Tue, 14 Jul 2026 02:16:23 GMT  
		Size: 14.4 KB (14382 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.5.1654-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:ed84321a1ff5f9c6ecced84b68978d78ad59d3b4a0d03622db6e3ace9dbc1cf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.2 MB (153195356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15b238c487d42e6f688e39660c5929281ee5a8d9791ab201b3d45da207522991`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:23:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:23:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:23:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:23:15 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:23:15 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:23:34 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:23:34 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:23:34 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:095ea30c846088815ccb72f4bab034fc140eee5fc68e5b3f3135a91eb5bfee24`  
		Last Modified: Tue, 14 Jul 2026 02:23:52 GMT  
		Size: 54.3 MB (54272922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ba7c6cddaa327cc0f381b6e8ae93a77b34987fbf47ec89948d053384fc4af54`  
		Last Modified: Tue, 14 Jul 2026 02:23:53 GMT  
		Size: 68.8 MB (68778085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee0e30ebe055d8e55c886109f91c95a62f8494f93066923c8c423043d66dd7a7`  
		Last Modified: Tue, 14 Jul 2026 02:23:50 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.5.1654-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e3440f3d50688f0c84eaa03af7b80a9c1555fe2b44362f6fd844a523d79fdfaa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5398653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1908fef36cec35ba22b862d2d8c0865203ebc1a8c54d92d57250c0594336b08`

```dockerfile
```

-	Layers:
	-	`sha256:b44f75e804de1dd06b9c0ba42587082fbbfe1f7f67ac93d96ff8a44e7adab5d6`  
		Last Modified: Tue, 14 Jul 2026 02:23:50 GMT  
		Size: 5.4 MB (5384153 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc439fcfff1b39de29bdb223510f13895691e29f5b9373cbb86eaee18b9d09ac`  
		Last Modified: Tue, 14 Jul 2026 02:23:50 GMT  
		Size: 14.5 KB (14500 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.5.1654-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:0ff2e6213daf917ad6ee24743d4569d86614a642fe0d9300fa80ae9b7ccdbee2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.6 MB (160646337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09a38748a42b5e9c41e08313856564cd64af05d7f421aedd3381ec5604c6f25f`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 06:49:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 06:49:11 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 06:49:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:49:11 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 06:49:11 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 06:50:05 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 06:50:05 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 06:50:05 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:639e1c13483ea279c94219be2736856262d8dd2efeff3e6d309f11a66aba21fb`  
		Last Modified: Wed, 24 Jun 2026 00:30:29 GMT  
		Size: 33.6 MB (33606388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df3326ec5eeb6f04a77913d8b1a260f40592e39f924cbc42ad6096f9e1347604`  
		Last Modified: Thu, 02 Jul 2026 06:50:45 GMT  
		Size: 52.7 MB (52669138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44ac8d5b95c07847113559b3d396f3ecaa6cee3ed73f2560d7d4c4d31d47c130`  
		Last Modified: Thu, 02 Jul 2026 06:50:45 GMT  
		Size: 74.4 MB (74370166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:184fbd22e1112b0f6a82b93aef62476af1c022b7896230328c0e0dae9697e169`  
		Last Modified: Thu, 02 Jul 2026 06:50:41 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.5.1654-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f1765a7811ce28b449a44913b326318550acd11e77ce6c2f529ef24f93a6a5e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5397034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39d1f2ab016b4bbe76e2141e8defb2903862047a3b9416429e08fb20a0389304`

```dockerfile
```

-	Layers:
	-	`sha256:da7880f2f94016fef72b1ce8884813c64073fc2ac7ef2dd8c5ba15bac833d6f2`  
		Last Modified: Thu, 02 Jul 2026 06:50:42 GMT  
		Size: 5.4 MB (5382604 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd61e773bdb023b103c0f11fbcd66c83e382b5ed4f08b4392362543c2b766931`  
		Last Modified: Thu, 02 Jul 2026 06:50:41 GMT  
		Size: 14.4 KB (14430 bytes)  
		MIME: application/vnd.in-toto+json
