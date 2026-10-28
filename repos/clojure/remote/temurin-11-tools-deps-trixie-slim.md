## `clojure:temurin-11-tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:c084e39b7c8763e565750f80de73099ec6da835dd6639bc9a908f66bde5f343d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:48e6106077f6b077947907eabeb00fffd999553aaf1b4b7b4329dfe7f300d7b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.7 MB (244709561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c90e090504837b4c57d886f861152e44c0f32bc528b6bb9398b981bee8ab2ca6`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:10:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:10:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:10:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:10:59 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:10:59 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:11:16 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:11:16 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:11:16 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:6fc242d221a673263eabd14a9ad9584d3177c96e5cb504c891497338e2f912f5`  
		Last Modified: Wed, 28 Oct 2026 00:10:54 GMT  
		Size: 29.9 MB (29855236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9156dc144751fbc305889980e43854ab580854fb3798da292869d9e0977d3b7c`  
		Last Modified: Wed, 28 Oct 2026 02:11:38 GMT  
		Size: 145.9 MB (145864287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1baf7ecbb0a06f66072ab36b7ad5e87b3c6cb71abbbad5c94f55ae46dcb68c11`  
		Last Modified: Wed, 28 Oct 2026 02:11:37 GMT  
		Size: 69.0 MB (68989392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a4f13b2a38baf50d741401df40ad89b93c4811258f42ffe0efc69caf59144e4`  
		Last Modified: Wed, 28 Oct 2026 02:11:33 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:5daf997711f3d9c498132b52ebc11e9c5b1be480693294fb4c94219fa850ba8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5295976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb3c137afe652708d36622495c8b8a88a684179b2c6321f569d9115cb3d6bd7b`

```dockerfile
```

-	Layers:
	-	`sha256:1f058f0ac6095b592155c97c5c8499b759138aef7efd661cecb43eb2efa1c24b`  
		Last Modified: Wed, 28 Oct 2026 02:11:33 GMT  
		Size: 5.3 MB (5281581 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c47a92ba43064783acd9deeabc418e5ace63326a32f7fbd7d133fabe78cfe2d8`  
		Last Modified: Wed, 28 Oct 2026 02:11:33 GMT  
		Size: 14.4 KB (14395 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:3cdf17b1e0413d16f3683031307e6367b35f6a3461b06bbcd8f65bbf517af76a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.6 MB (241595833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5976d17c6cca75b8871053323bf1ebc93679e910bc673848914517d6abf08e40`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 02:17:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:17:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:17:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:17:45 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:17:45 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:18:03 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:18:03 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:18:03 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08604d51888670613f9230d273ff0643ae0d988279c3ed5def0f6da4f0ade832`  
		Last Modified: Wed, 28 Oct 2026 02:18:25 GMT  
		Size: 142.6 MB (142576601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad799b15be56eac7e6a6df1540c9b7497ec57b46f4d129f1c4258cac5bc9d5cb`  
		Last Modified: Wed, 28 Oct 2026 02:18:24 GMT  
		Size: 68.8 MB (68805088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a076ab5b61748ba3c6b0a8fc392bdeb3628f3256155ba1941fdd6d019023dea`  
		Last Modified: Wed, 28 Oct 2026 02:18:20 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:5791d860522584e99b02cde5b7162d67cf31a11ee57f26316e32260d452ca626
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5302474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9e01683646f68f389eb1e0976ee7afb901261c5293ad332a767759406fac1e2`

```dockerfile
```

-	Layers:
	-	`sha256:6f4e0807ebfe37b70f3fef771e934f736c24713183f2c79ad67daee7414af063`  
		Last Modified: Wed, 28 Oct 2026 02:18:21 GMT  
		Size: 5.3 MB (5287960 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09df7b5710f9f4690c0ed37388f9648d594a0d5ba70ff1e6def32b4d2d78f0bf`  
		Last Modified: Wed, 28 Oct 2026 02:18:20 GMT  
		Size: 14.5 KB (14514 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:8a168439d38a6594eb00ac3ac5009d465c1385e8c5390e32e53d115221584ac5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.2 MB (241166095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f9d33cad1e503e9f7656eedf8db68a4bee9a4090cdc6de44c11955c62a4cba1`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 10:04:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 10:04:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 10:04:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 10:04:16 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 10:04:17 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 10:14:33 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 10:14:36 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 10:14:36 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:5e4eb9dc9f650fb59b641178db89dd4b48ea020427f346ce7f9d30a6b89bcd7e`  
		Last Modified: Tue, 20 Oct 2026 23:35:12 GMT  
		Size: 33.7 MB (33651935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dcac8f1fb37221206ec9e42f91e7f9060981927dfbb2129eed28dc10e1790b7`  
		Last Modified: Wed, 21 Oct 2026 10:10:39 GMT  
		Size: 133.1 MB (133095132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2296a7d9c884563fd5ec1b8beb11bdb982cf17ff41ba0c76ca95629d44ae7d4e`  
		Last Modified: Wed, 21 Oct 2026 10:15:37 GMT  
		Size: 74.4 MB (74418383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cfffb8899435e9f449f1ad667e8ba3fd5af75a056cadee7fbc15a17e382b72e`  
		Last Modified: Wed, 21 Oct 2026 10:15:35 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:933ec0be340f799c3a4a80ecff9892462a12e52ccc5201167713235057a7069f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5299754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08db73db2a9bc651bff8b94adc72af391170c6b827f6e9d4f86c1b8a323218ee`

```dockerfile
```

-	Layers:
	-	`sha256:4f0b10dc0299f0308585f71f1763bd9892d9009695bb1cbaa31a78a6c57955df`  
		Last Modified: Wed, 21 Oct 2026 10:15:35 GMT  
		Size: 5.3 MB (5285309 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:352fe87829645bcf09a12cfca7d52f6751f7a724a53f4d2fbf7182729667be4e`  
		Last Modified: Wed, 21 Oct 2026 10:15:35 GMT  
		Size: 14.4 KB (14445 bytes)  
		MIME: application/vnd.in-toto+json
