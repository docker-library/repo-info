## `clojure:temurin-17-bullseye`

```console
$ docker pull clojure@sha256:f45f3c40c0b47dff1e52b483ff1d8c05b5a9598a48427653d98e6ad08325a3a9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-17-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:f6474a63e86914feba4594c1d7be26db17e79fe00471739a43d78147bd30fbd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.2 MB (266210115 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:129b7284cdccc2e7a26676cfa0d8a906fe0f384fc43912d51b6285caf3c920e0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Tue, 18 Aug 2026 20:45:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:45:14 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:45:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:45:14 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:45:14 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:45:26 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:45:26 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:45:26 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:45:26 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:45:26 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:accfb92e6c6ad5d206b68e1bfd8a6c2af4ae82f9b6cc6eafe49675a0655e0742`  
		Last Modified: Tue, 04 Aug 2026 23:52:03 GMT  
		Size: 53.8 MB (53777019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42a23fa3152116ce0c967b43be507d2ee9a758a0ce7e0e7854ce6b863bca5c56`  
		Last Modified: Tue, 18 Aug 2026 20:45:52 GMT  
		Size: 145.9 MB (145905460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e5038c28474b314bebb2a4727260ffc7e68d84d514fe018e44d9287a8c8e16e`  
		Last Modified: Tue, 18 Aug 2026 20:45:50 GMT  
		Size: 66.5 MB (66526600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f567c6697b55f4086805fac547530974bb5212f9f2f3baf2b72e2e26dcb345eb`  
		Last Modified: Tue, 18 Aug 2026 20:45:45 GMT  
		Size: 609.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd8cbdbc8da94a122ffc5962b4b09ed9a01994450c8867233d91249cc8ff4130`  
		Last Modified: Tue, 18 Aug 2026 20:45:45 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:8df36c372b4c0fb22da28e0560c9996e5eebb02a5ff86e985179855a698eedcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7426584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c6f217e6d00bda00545d07a3224934184aec64c3b008c8f8584c035d429b4ab`

```dockerfile
```

-	Layers:
	-	`sha256:a7a78dbd60805db920efedd57072d16a1730cc51f040d9b9f78eab4e3124d0c4`  
		Last Modified: Tue, 18 Aug 2026 20:45:46 GMT  
		Size: 7.4 MB (7410652 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:96c11d4f093910450b406e3351b20469ee9dbd4a095d849246fa969ff27b35e2`  
		Last Modified: Tue, 18 Aug 2026 20:45:45 GMT  
		Size: 15.9 KB (15932 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:70286ae6306ba7f9a5847aaf176fa86438ebb698e89ec9130f8bfe16e4453cd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.7 MB (263676620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ab7a89d6eef15f71ebf0771bf819458fc8fcafd2b357a012aae21ebb0a7d7b9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Tue, 18 Aug 2026 20:45:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 20:45:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 18 Aug 2026 20:45:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 20:45:24 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 18 Aug 2026 20:45:24 GMT
WORKDIR /tmp
# Tue, 18 Aug 2026 20:45:37 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 18 Aug 2026 20:45:37 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 18 Aug 2026 20:45:37 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 18 Aug 2026 20:45:37 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 18 Aug 2026 20:45:37 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:3086cf1958fe5793d805c40e074e8662fbe7bb02df60f5a5dc95718602f4d4e0`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 52.3 MB (52260902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbda2911bb3f2b77405d2cd5c60cb2cfa9b0633020437d878097125f1a146c98`  
		Last Modified: Tue, 18 Aug 2026 20:46:02 GMT  
		Size: 144.7 MB (144724266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f4aadbffd379aa4c411f6cc8a8bfc9a67b344c824ed0b1403e9e6fb3b847bd7`  
		Last Modified: Tue, 18 Aug 2026 20:46:00 GMT  
		Size: 66.7 MB (66690411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f76f5573ca89b3b5ecb89ee771b52979d12d2c0c961e3981910e8af5c5ba8fda`  
		Last Modified: Tue, 18 Aug 2026 20:45:57 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67310fb57e94b7b7219830dbf238de7b4744c02fc65f6f60c3dda256709b2b86`  
		Last Modified: Tue, 18 Aug 2026 20:45:57 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:84b335e02a1995414e246b9a892ecb105d0bd785d51a6ac9110a23edcb18b3da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7431801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9d7708348c9c616e5c0a60d14102330941b2066396e30439bfb0581a008b836`

```dockerfile
```

-	Layers:
	-	`sha256:08fed15060455288f3b249fe112eb608b642811842b2ba240a52961dabb503e8`  
		Last Modified: Tue, 18 Aug 2026 20:45:57 GMT  
		Size: 7.4 MB (7415751 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1983a9e88a86b35530d995ed970db61810ed27da200689331fca6708da48a1ec`  
		Last Modified: Tue, 18 Aug 2026 20:45:57 GMT  
		Size: 16.1 KB (16050 bytes)  
		MIME: application/vnd.in-toto+json
