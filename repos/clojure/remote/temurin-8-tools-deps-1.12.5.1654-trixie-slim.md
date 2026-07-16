## `clojure:temurin-8-tools-deps-1.12.5.1654-trixie-slim`

```console
$ docker pull clojure@sha256:9f7bb080d152498734d1e1609250b08c6b0fdae48ab5da394258b244aeec7800
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
$ docker pull clojure@sha256:61a84b8ce435338b27dd24e3b6edf5c42bbeae0a1be240ff0a96d3331e3b99f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **154.0 MB (153952072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68db7849d19453f853fb4feaf7f8298f2a3965b2be31904e2473b5e04d386ae2`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:28:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:28:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:28:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:28:28 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:28:28 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:28:45 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:28:45 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:28:45 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba31408a5bfeae28582eb53ccc7ac244fbd38c010b600c2a56e4fdfb79bb61f3`  
		Last Modified: Thu, 16 Jul 2026 01:29:03 GMT  
		Size: 55.2 MB (55198725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:908d31f3321c9ce92f4eae2ac0295cab495413bcebdbf25625f47b54783847e7`  
		Last Modified: Thu, 16 Jul 2026 01:29:03 GMT  
		Size: 69.0 MB (68971797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24335dae2b4a82f93343d0cdf0a88dd9d8a8ecba4144ed9444b2a86afa0738c1`  
		Last Modified: Thu, 16 Jul 2026 01:29:00 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.5.1654-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:cb3781787036581e88507ab6d49818994fca1bf04a336fdf50275815a1ab8d4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5392074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b3b73847ff09dbabb8a6da30b69b44fe32d92093e86167f1ec1ddeb1363db88`

```dockerfile
```

-	Layers:
	-	`sha256:3040bff0ee2ceddee60866b1cb7359d564a5cb195c877cbf263a1fb6dbad36cd`  
		Last Modified: Thu, 16 Jul 2026 01:29:01 GMT  
		Size: 5.4 MB (5377692 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:70cd627ab6734fed44879023c7ba153822d51fac93db2eb8c6cacce204401fc7`  
		Last Modified: Thu, 16 Jul 2026 01:29:00 GMT  
		Size: 14.4 KB (14382 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.5.1654-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:4a5f85b6d54070739c2e3b0229cf2ac23eed79c7a4ab68f77618ca2f7abf8fc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.2 MB (153194919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a692d4004054c32d772ea08d7b3f969710d75b9f6fd50940c6b0d9e6ce1cd027`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Thu, 16 Jul 2026 01:20:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:20:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:20:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:20:07 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 16 Jul 2026 01:20:07 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:20:24 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 16 Jul 2026 01:20:24 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 16 Jul 2026 01:20:24 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d374a2d4c67c46cf3705e9072a816063ab109a8f7df440ec99ecaef1f483de5`  
		Last Modified: Thu, 16 Jul 2026 01:20:41 GMT  
		Size: 54.3 MB (54272926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce3bda4a2cfbf01220195b07b63d95cfb3903742042a6ed8623694810e3f101a`  
		Last Modified: Thu, 16 Jul 2026 01:20:41 GMT  
		Size: 68.8 MB (68777645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22518433f453392a8703268fa6a8f4e099dcdae3482156fe4d76de08ccf622a3`  
		Last Modified: Thu, 16 Jul 2026 01:20:39 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.5.1654-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f0b83e9e7d03bcfc0444b34f90ba76940a47895a58d63e4a2754a863fb6ba109
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5398653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e54fd30684a58827858dd86834c22b647f83f5d4fb6a4222aa05f5c839fe6e5d`

```dockerfile
```

-	Layers:
	-	`sha256:1632104b65420607a6d0711267d577a2016c13c0fc794f5ba523d95767e544ba`  
		Last Modified: Thu, 16 Jul 2026 01:20:39 GMT  
		Size: 5.4 MB (5384153 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed87adf8849b93f1393b9e0b5d2568770e09801031b7b239932d054f59102d5e`  
		Last Modified: Thu, 16 Jul 2026 01:20:39 GMT  
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
