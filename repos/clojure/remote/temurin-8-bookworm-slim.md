## `clojure:temurin-8-bookworm-slim`

```console
$ docker pull clojure@sha256:bb4a063231690f6ffc447aec94ff6bfef5a9bac832b81937c0d77ec24e027c77
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:406ca5ecd67240ef1dff137bac52e1f2b2c53e427d2a26c4054e10695794c3ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.9 MB (149935031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fa134550e614eeafd163c3fd58c236d66ee5758a2c8b12f412a2e704ed82d56`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:15:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:15:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:15:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:15:31 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 01:15:31 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:15:44 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 01:15:44 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 01:15:44 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:11422d7ca1a44390a32bd8d8d9dc5946b4d053b3bbd9507d682e35584ba84a26`  
		Last Modified: Tue, 20 Oct 2026 23:30:22 GMT  
		Size: 28.2 MB (28247935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb04e1ae14c7b2d032fd9f15371e96ea388f761a0a14e1dddbae7d99a95cc57a`  
		Last Modified: Wed, 21 Oct 2026 01:16:02 GMT  
		Size: 55.2 MB (55192265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c090ee76eeaba3f018c6dbf434ca8f5a2214ba8edfc569e4249cb5ff5fbf9044`  
		Last Modified: Wed, 21 Oct 2026 01:16:02 GMT  
		Size: 66.5 MB (66494186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8df7ce7d586bccb2d4ad0a1ebdc767ceeb2946e3ff8f780c5712ea0b4539eff1`  
		Last Modified: Wed, 21 Oct 2026 01:15:58 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:26aa5188f4a36d124770288d37fafdb450388fbbfdd0435eb8b78069e082eb28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5252767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a732e5cdd368e413b45db5cf0e29420230cedb2793963cdd35f7067e5f3e030`

```dockerfile
```

-	Layers:
	-	`sha256:722c40f13a132452130c49f75002a15979198d9beded710288f595186ee5c802`  
		Last Modified: Wed, 21 Oct 2026 01:15:58 GMT  
		Size: 5.2 MB (5238367 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4af4a7bc8b2de1e62fc843c2ece69d29d1f0d0451bd0e9a58cfba018dca6591d`  
		Last Modified: Wed, 21 Oct 2026 01:15:58 GMT  
		Size: 14.4 KB (14400 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:c6b7d274f2c08af5e5a3f9dc1be283b539f5b8bf27f8409aca3fe4860aa4de66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.9 MB (148887633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4ba997fe566dccd38f0b08962e67bd9fa0e9d7488e6cb8204599529129cc498`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:21:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:21:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:21:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:21:34 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 01:21:34 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:21:49 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 01:21:49 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 01:21:49 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:41b2195c355367079ebad200f9591fe3c2cb886c3b1e67abaaf2090dc11c04d9`  
		Last Modified: Tue, 20 Oct 2026 23:30:04 GMT  
		Size: 28.1 MB (28138425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a20957c25277f1c08f305fbd316225569cf1905687de1a3e5952313220c70fd2`  
		Last Modified: Wed, 21 Oct 2026 01:22:07 GMT  
		Size: 54.3 MB (54254267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53e463bafca9c9eabd7bb21c4e2aae94626248f53b54ba121a0e59e1d62fb63c`  
		Last Modified: Wed, 21 Oct 2026 01:22:08 GMT  
		Size: 66.5 MB (66494296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75d1d1e2b8483892a760498495fe6a1680653c32da5583c8f683894395fb1310`  
		Last Modified: Wed, 21 Oct 2026 01:22:04 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:ad83142f7feba939a936aa3ea2ea47ee6ded963f435a18016da2914574a0f913
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5259348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d8e1dc42fb403f81fc312c8e478911cd97a5a37e19e3c031abc33c30c2429bb`

```dockerfile
```

-	Layers:
	-	`sha256:d7b6f659f892bf085a95e317cd963df7d7d2c425e11cf04ae0f46bc87fb791ef`  
		Last Modified: Wed, 21 Oct 2026 01:22:04 GMT  
		Size: 5.2 MB (5244828 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:451bf770f0837f828e8df20d5b8746e3f9e7312a865a80613303fa28cce1bdbd`  
		Last Modified: Wed, 21 Oct 2026 01:22:03 GMT  
		Size: 14.5 KB (14520 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:8e994d5b47948df9117a726681ee06caae0123a3ee0f785e3497ca2e6090f01b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **159.5 MB (159546239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b6604586d517448183bae45bc45947db6587b2536605da1cbe4fa9c3dd1681d`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 05:08:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 05:08:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 05:08:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 05:08:15 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 05:08:16 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 05:09:15 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 05:09:16 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 05:09:16 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:1f3f8c47175317b9e585f790a7a31d74fa5e58d183221b62e4cc6945ea188893`  
		Last Modified: Tue, 06 Oct 2026 00:12:11 GMT  
		Size: 32.1 MB (32092434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dae5180b753ded26327574e3dc7a83333f4eee1bcd81f2bcd5e15a9ae5b825e`  
		Last Modified: Sat, 17 Oct 2026 05:10:00 GMT  
		Size: 52.7 MB (52667118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6beefc79a575f2aa856fca4d0600b9a9da2e4f34382b0873485b0cb211e32edf`  
		Last Modified: Sat, 17 Oct 2026 05:10:00 GMT  
		Size: 74.8 MB (74786044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0458cb9e6acba98ec06871a220b171486364a5cc2dda8bbe43a06306ccd6674`  
		Last Modified: Sat, 17 Oct 2026 05:09:57 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f75e402c9d529881753ac677d1f4d713441c2fe0952335ddddc03ba0d5fdd3f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5259865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97cce8b933444dd57b8156ae26be93190a93890ea6aa0eec7d6881dbfad9933c`

```dockerfile
```

-	Layers:
	-	`sha256:f0823945b300e6403e675b937bf83e80faf264c28b19e3f7d883e98cb042358f`  
		Last Modified: Sat, 17 Oct 2026 05:09:57 GMT  
		Size: 5.2 MB (5245415 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:04937b2b8f5f29e5ff9bea692481fa9407f96c6b450d85fac0e9e3a0f66ba9b0`  
		Last Modified: Sat, 17 Oct 2026 05:09:57 GMT  
		Size: 14.4 KB (14450 bytes)  
		MIME: application/vnd.in-toto+json
