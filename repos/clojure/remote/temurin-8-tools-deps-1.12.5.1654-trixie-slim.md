## `clojure:temurin-8-tools-deps-1.12.5.1654-trixie-slim`

```console
$ docker pull clojure@sha256:f70dd74e9969df33df6c6adcd271e5a76641db2bcd1fb2ec35b403be4a478b5e
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
$ docker pull clojure@sha256:b70e29164cb866a950d9d68cb0b5e62cce717edeecefe62c0da45354e9dcc2cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.6 MB (160644202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:caa7466fd74cfeaeca06c32bdce76660efed2c54e76276aae5f3770e336c49ac`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 08:10:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 08:10:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 08:10:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 08:10:16 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 08:10:16 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 08:10:58 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 08:10:59 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 08:10:59 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:27076b3f70881c54074231406139976969c9e0ed7ff938a5487429b06bbca171`  
		Last Modified: Tue, 14 Jul 2026 00:15:37 GMT  
		Size: 33.6 MB (33601478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2764c09ceb6a38ba17e1ba6c8d019467abd3d0aa8f7309428df2d92dea055bd`  
		Last Modified: Tue, 14 Jul 2026 08:11:49 GMT  
		Size: 52.7 MB (52669131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d83867576e46267599bb3583b35a583dab3423f830fff9dcf234453c5a4724d2`  
		Last Modified: Tue, 14 Jul 2026 08:11:50 GMT  
		Size: 74.4 MB (74372949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ee8c609355ae1c4b0217cfa079f96b2d34fd49b35f265bc18994c8e2b2b2813`  
		Last Modified: Tue, 14 Jul 2026 08:11:47 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.5.1654-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f98c6f0822ed2d28f8d6c435fa1a3a71b6eff015d6fcb5c28a0221d1fc70bc7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5397088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48f69d07208fd09667d328e7074cb06e2d70a0218df2d821758fa3f52caeb92c`

```dockerfile
```

-	Layers:
	-	`sha256:df32d92bd408cfc82dda39841732d9acf382e50afc3028cf78f01c356a409d32`  
		Last Modified: Tue, 14 Jul 2026 08:11:47 GMT  
		Size: 5.4 MB (5382658 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:05b1d3c6016918a81fe7755ec29871c2a34d99b3103d9218017adfb5df657618`  
		Last Modified: Tue, 14 Jul 2026 08:11:47 GMT  
		Size: 14.4 KB (14430 bytes)  
		MIME: application/vnd.in-toto+json
