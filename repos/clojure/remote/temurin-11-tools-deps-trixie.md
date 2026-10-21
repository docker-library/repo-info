## `clojure:temurin-11-tools-deps-trixie`

```console
$ docker pull clojure@sha256:d0840ddf4a12ad995b7ea7dc3d2efd5ec64c636117c856dda358d38c1e94f108
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:dc7c422dc0fc5bdfa5c0cfebe1b456f4fc2f8ea5bb8005a24a778baffd79ce77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.8 MB (277828811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee542d0370d909d65d5a2deef210c52c79dc35b302ddca08d9d51f79a13acee4`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:17:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:17:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:17:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:17:13 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 01:17:13 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:17:30 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 01:17:30 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 01:17:30 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:8d0037029946d2c6dabce18eceda79c533c5797ed1ee86f94084cb8cddaeea91`  
		Last Modified: Tue, 20 Oct 2026 23:30:54 GMT  
		Size: 49.4 MB (49393622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63c64c2436f0dc37e9d4ed95f083fd06e885201a3620b2730f2ca1806e92d187`  
		Last Modified: Wed, 21 Oct 2026 01:17:55 GMT  
		Size: 145.9 MB (145864516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b437238a713a1a5aa11306b72599d9d0b8bd0e4beb7d9759221e2059564a4848`  
		Last Modified: Wed, 21 Oct 2026 01:17:53 GMT  
		Size: 82.6 MB (82570026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54445f1bfbc85406716fe0faebf2e17b441dae5002e744fc86016dc0fe09afd0`  
		Last Modified: Wed, 21 Oct 2026 01:17:50 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:5a804e51a9f867ea6f65bffa92d71011110c386ef1bbad36d7dbf76a8d96d0bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7511398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41c95ae86d4c62146134c3c4d4ea38306390254209fc5b3650d50f6e06171e70`

```dockerfile
```

-	Layers:
	-	`sha256:fb2908f6bdc4853a2258a830e102d55ce5659294c7f4a75c6d15970f9cc958fd`  
		Last Modified: Wed, 21 Oct 2026 01:17:50 GMT  
		Size: 7.5 MB (7497059 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64d3b180428ae8eb024a63677a80ed0209bb2c1373350983be96238da8462fbf`  
		Last Modified: Wed, 21 Oct 2026 01:17:50 GMT  
		Size: 14.3 KB (14339 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:f10937d45375799d0823522ad8ab89bdeec2541c88a8b159f63eae6447d4b5fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.7 MB (274732198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54f0582fbf5f9a7bf2f7a199536fa30ee80bfd01b86f8c191d1a88624b711e36`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:23:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:23:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:23:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:23:18 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 01:23:18 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:23:36 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 01:23:36 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 01:23:36 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:229b15d702220d963eaa48bcd8eab0ee7aa8f52996309c59cf44fce7deec3869`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 49.8 MB (49761602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b70a252333e2eca5b03ccefdadec46e9fcf4f571c0505ade2e48692b068947b0`  
		Last Modified: Wed, 21 Oct 2026 01:24:01 GMT  
		Size: 142.6 MB (142576601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1ef90c59914c4c457f045a2d165439518c57d0cdecb0d7c8e613c30c6e2a662`  
		Last Modified: Wed, 21 Oct 2026 01:24:00 GMT  
		Size: 82.4 MB (82393349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:856acba0d0c4301f1ed7459c83d0c556bc7fdf74195b7b7689be714bf4cec1a7`  
		Last Modified: Wed, 21 Oct 2026 01:23:56 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:625746a0ed30a9d5739248d4144c3a2b0ec7b511a41d71e8bd1a8ba17454a5c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7518527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94f53fa94dc99ad95b383149c897d5bf07eb7dce0d203129fdd1a38766eeee11`

```dockerfile
```

-	Layers:
	-	`sha256:138ff835affea83a0adebf1b4ed7f0003b33e3d33e683b1fd9684ca93b939129`  
		Last Modified: Wed, 21 Oct 2026 01:23:57 GMT  
		Size: 7.5 MB (7504070 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9d53f7e2bce0d5c106077135544bbaa320d1b3eaee93f7b38210f3a7a578a11d`  
		Last Modified: Wed, 21 Oct 2026 01:23:56 GMT  
		Size: 14.5 KB (14457 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:865988995655bf059f0f2997e0808e5e6d94d7af654a856bc25be5279456aade
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.3 MB (274298203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfa3180f6f436f321bffd075d9d5c7443f1d56053f980680f67d57ac57c36382`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 05:23:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 05:23:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 05:23:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 05:23:52 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 05:23:57 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 05:33:04 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 05:33:05 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 05:33:05 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:1216778738c2d0f00bc38a90447aff403e59888e07d78e8b1c4f2dde2aa2eded`  
		Last Modified: Tue, 06 Oct 2026 00:16:25 GMT  
		Size: 53.2 MB (53207124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bd40d33b78e6e0d28cec5774bf2db0a9378fd14854631e71320828086e27c35`  
		Last Modified: Sat, 17 Oct 2026 05:27:56 GMT  
		Size: 133.1 MB (133095149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e43e6d373578ca65fc87036aac16b39de91d1e4e049f86a91beeab18359b34a6`  
		Last Modified: Sat, 17 Oct 2026 05:33:48 GMT  
		Size: 88.0 MB (87995287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a8a2d3ccefb89c4387b702b8c6fe9c1f5fe3fffb62934a4d26d839de5176b98`  
		Last Modified: Sat, 17 Oct 2026 05:33:45 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:407d527f8de5dc4f2b65c01d6c455757706668937feb30fa6e39ca2bd22ba738
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7516527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4011441b185cf4124a100d0d44f857d99dde347aaff19cf7c61608931722dafd`

```dockerfile
```

-	Layers:
	-	`sha256:73cb4795350d39ab51062628b19472cc7f2f9a3c73d6c664661e4d302b14e4f7`  
		Last Modified: Sat, 17 Oct 2026 05:33:45 GMT  
		Size: 7.5 MB (7502140 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:47fec311fa62df84a7f169541a27ebeb66783ad87aef49868c1ee4bc66e72dc1`  
		Last Modified: Sat, 17 Oct 2026 05:33:45 GMT  
		Size: 14.4 KB (14387 bytes)  
		MIME: application/vnd.in-toto+json
