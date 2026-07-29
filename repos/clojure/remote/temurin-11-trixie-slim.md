## `clojure:temurin-11-trixie-slim`

```console
$ docker pull clojure@sha256:f8b5cbae973d5d6d4eb2136bb9e0e224b50bcec07865ae5dd0957ca8dbaa6900
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `clojure:temurin-11-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:62534c970304ef7f7695ad1cb79f434aa3d6eb64cd8530e52c9caa035804c768
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.6 MB (244631605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8240675d4cb694e402bf46e7e78961393410623ec6c395b9ed5ea503cba76749`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 17:55:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 17:55:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 17:55:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 17:55:13 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 17:55:13 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 17:55:29 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 17:55:29 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 17:55:29 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2523e56430e838f3871d39fc2866018e6a272c87bc1c4143466dde0dfeaf858`  
		Last Modified: Wed, 29 Jul 2026 17:55:51 GMT  
		Size: 145.9 MB (145886173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8820bc4bf96e6ad567a529fadaf7fb78efc5659f9538161c9dddb01520d3040f`  
		Last Modified: Wed, 29 Jul 2026 17:55:49 GMT  
		Size: 69.0 MB (68963882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9920caa74ce22301e6e573cc29820a9d736193d29feb072b4e181d5b5694775b`  
		Last Modified: Wed, 29 Jul 2026 17:55:47 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:cdaa54b955bca264f77446bde6b2a64ae9546071195c5b3d06d7e66b7a1bcf96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5291244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:000a77e5268926a0149d9ef1084fbac6809d3fff367b897a188228ade8e0d005`

```dockerfile
```

-	Layers:
	-	`sha256:a3b437460bea637e92ddbfbddbf95ee7dafcde0dd3d574ce67fb39770de39ed6`  
		Last Modified: Wed, 29 Jul 2026 17:55:47 GMT  
		Size: 5.3 MB (5276848 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:99df2833f7245465c58e58855dd8fc6ba0b70c1efe546ba45d2e33eb219c85e0`  
		Last Modified: Wed, 29 Jul 2026 17:55:47 GMT  
		Size: 14.4 KB (14396 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:2fc9f699ddb5ec7fae1e1b1a98fad5e7f0cd8663e0176d6ee70367d871f3f27f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.5 MB (241515604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0ce85d558819a8cef99a48c381b45c2d79aa4129e82a4ddc9d98ca1f92c3e32`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:03:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:03:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:03:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:03:28 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:03:28 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:03:44 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:03:44 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:03:44 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25ea022affff1fe712f5968edaa63dbb1f46c17da020646aeea423709a1b492e`  
		Last Modified: Wed, 29 Jul 2026 18:04:08 GMT  
		Size: 142.6 MB (142582139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10af6bb03c65d325b13e5f478bc8800f23671706db574825338888cb0b9e7d8d`  
		Last Modified: Wed, 29 Jul 2026 18:04:07 GMT  
		Size: 68.8 MB (68789116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1abf966aee06fecad5b3028d2769f4ac46d72f07ad8b2b4eca43cd4a985a52ed`  
		Last Modified: Wed, 29 Jul 2026 18:04:04 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4e6694a4b7eaaab2f2a6d847e95dea7dbfdde876042c825806b914003d986da8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5297742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f9dabbefad0867b4e174236cf23df8d606371a8683cd9a78ce2226bebd165b0`

```dockerfile
```

-	Layers:
	-	`sha256:7aa1336099c14e4d6047a1dcfff12775979351d80c10e4ea2cbb5775f1e60187`  
		Last Modified: Wed, 29 Jul 2026 18:04:04 GMT  
		Size: 5.3 MB (5283227 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a1ae03d730d8e9615deb39ece52f4b8b83b0b93d2523c8e40830755217ed55b`  
		Last Modified: Wed, 29 Jul 2026 18:04:04 GMT  
		Size: 14.5 KB (14515 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:a9dd29085fc8bf5e0683f6467ff67dbd4028a0b05692cfd5c749b6e887113423
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **241.1 MB (241095208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82953d2dfca89dffd3b2e7424b1482142d555866a25f8234f905f4013b992f04`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 17:59:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 17:59:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 17:59:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 17:59:58 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 17:59:59 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:00:41 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:00:42 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:00:42 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:27076b3f70881c54074231406139976969c9e0ed7ff938a5487429b06bbca171`  
		Last Modified: Tue, 14 Jul 2026 00:15:37 GMT  
		Size: 33.6 MB (33601478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f0523c669fc61be77511b0eaa5ca427239d7cce601503c22b4688a19f3a411f`  
		Last Modified: Wed, 29 Jul 2026 18:01:22 GMT  
		Size: 133.1 MB (133109849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcd56f7cde34eca902d90846c1ee825e75e648dde6009fb7e1e00233f957aa20`  
		Last Modified: Wed, 29 Jul 2026 18:01:21 GMT  
		Size: 74.4 MB (74383235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23d852203dc3fdefe14d9fb214157763760c18c4e6175137944d9d756047f49a`  
		Last Modified: Wed, 29 Jul 2026 18:01:18 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3a001908a876ed9438fe776c4c404e21423a203af2b7359df200ab39d6276b97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5295049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbe5fd5e8d928b530ebe92b25560239648863589fd19dd008e34aa973f471224`

```dockerfile
```

-	Layers:
	-	`sha256:c7706ef4ca4eaa3d7aa19db99255f6302fc6fc8c00688915381cfbb338c72e2a`  
		Last Modified: Wed, 29 Jul 2026 18:01:18 GMT  
		Size: 5.3 MB (5280604 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d251a8fb3086c6809f330263e21d5c37f8ea216a77fbb2be2a9b60fb6a217d71`  
		Last Modified: Wed, 29 Jul 2026 18:01:18 GMT  
		Size: 14.4 KB (14445 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:1103dfa274c593482a56e0836d46aa71c2e5a23ca8453fa3b6b2803a43a5d425
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.4 MB (226448220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb19915d6b4ae3f8f6782338630109dd7bca09b07781e5a5c1fdb073e7b49a48`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Wed, 29 Jul 2026 18:18:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:18:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:18:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:18:04 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:18:04 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:18:28 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:18:28 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:18:28 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:8b525274d0fff49aeaa3328d03c6a8b56b3b80d0a7a58034d99e75f1e2dad806`  
		Last Modified: Tue, 14 Jul 2026 00:17:35 GMT  
		Size: 29.8 MB (29846632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1b8e05867b7fd7ddaf0ad45f16cec59d12c8d217c17521b0c3ea87652228bf6`  
		Last Modified: Wed, 29 Jul 2026 18:19:03 GMT  
		Size: 126.7 MB (126651694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8b7999bb712a88f372dcae2084e25c549658b1162f0e4ff8c125ecc0bcf335b`  
		Last Modified: Wed, 29 Jul 2026 18:19:01 GMT  
		Size: 69.9 MB (69949247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd233f58a4beebb8f32dc6f37c8705fdc10f49b94875d96e87f9660137ce22c8`  
		Last Modified: Wed, 29 Jul 2026 18:18:59 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:cf001e19f182b1d3954ced540e9b4127bd7e8c3f6c2c4571a232e6c74574faa0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5287173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24f6255c1240182cc8676e6ce9ca923da8894c361dae702c786f9df1cb1a86f7`

```dockerfile
```

-	Layers:
	-	`sha256:1d08d9d023adb9fc0053958866d6a57cd5dd52abee19a25fccb22df9fbba0549`  
		Last Modified: Wed, 29 Jul 2026 18:19:00 GMT  
		Size: 5.3 MB (5272776 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3c78dbc346b5a2482b0d5c07420266d3325641cc2347f263289be22eb2f40499`  
		Last Modified: Wed, 29 Jul 2026 18:18:59 GMT  
		Size: 14.4 KB (14397 bytes)  
		MIME: application/vnd.in-toto+json
