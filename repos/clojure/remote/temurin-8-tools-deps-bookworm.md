## `clojure:temurin-8-tools-deps-bookworm`

```console
$ docker pull clojure@sha256:72068f0fae05cba3c37f92cddee51dc29c3977697ea6718c8d816ec167ff7fb1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:8c78aba88fb037bebd34457042e77c99ace75e9ec556f2e1ffa68c97a068c467
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.7 MB (181717551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9518c3004a5c7224fa95583046bdccae01278b1896e91947f2c7f28464b6fcc2`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:05:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:05:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:05:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:05:53 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 08:05:53 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:06:07 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 08:06:07 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 08:06:07 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f36437759d74a83d387f9711c86d41e1b03bd12bf65793ad5eb0d09bccb8e475`  
		Last Modified: Thu, 05 Nov 2026 08:06:25 GMT  
		Size: 55.2 MB (55192251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a01c4d75fb62d54edbf24e5cb3d3fbccf05779ac49f55dfc9252cd8498b77ff`  
		Last Modified: Thu, 05 Nov 2026 08:06:25 GMT  
		Size: 78.0 MB (77998171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59e98b8098890f921b85c497513a2759f3db7fb749a6eac9b8ecfa6c3b38c9bb`  
		Last Modified: Thu, 05 Nov 2026 08:06:22 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:a34de4adaff1a03d0b89447c683b17805853d9159a1593a102f11beb48023836
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7513343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32ebfff3a0f5d9cc4fd56cc179c443cc5ce02efaba00a5437c867ad586d841a8`

```dockerfile
```

-	Layers:
	-	`sha256:ea06fc68689620f6537c61ff2eb8b59fa912d5ca70f2d158019411ecf9caa296`  
		Last Modified: Thu, 05 Nov 2026 08:06:23 GMT  
		Size: 7.5 MB (7498995 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f4def9c44f2e3c177550cba3a2f8500f4756e942bebc2db79f453c639ac54637`  
		Last Modified: Thu, 05 Nov 2026 08:06:22 GMT  
		Size: 14.3 KB (14348 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:43f1b4d82ddfce5a3d37ac759181a75c15eed1f35049c912907a383687cc7563
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.7 MB (180666934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9511dbfa9b518c0a62b444b44d3cee2443b04f9eefa22de816ff197d93edf1d`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:14:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:14:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:14:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:14:58 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 08:14:58 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:15:13 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 08:15:13 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 08:15:13 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d196dfcf231fa282d77ef10b8a922bbb6d6ae137a08d8610a146be207c56019`  
		Last Modified: Thu, 05 Nov 2026 08:15:32 GMT  
		Size: 54.3 MB (54254289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:650087f0c879c8c324c46df6e3d4b543a72b22592e1f1fe24019ae94cd724991`  
		Last Modified: Thu, 05 Nov 2026 08:15:32 GMT  
		Size: 78.0 MB (77999544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35efcb3e058cd02e68c8d448d47cf5682f060c785c2cfce2989698cfb6d58293`  
		Last Modified: Thu, 05 Nov 2026 08:15:29 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:be7556f1ed469d6945f58e651d8ad6dcab122e03a519e69177fc6e6f73bcaf8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7519924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76f5d0f44cc7a872bced5b0c26d78b4151d5ba4514739c78884e10dfb24044f2`

```dockerfile
```

-	Layers:
	-	`sha256:08b3661aaeb84e1f92fd985bd4cd4fdb4cc1eae60d414f1fa1571fde922caedf`  
		Last Modified: Thu, 05 Nov 2026 08:15:30 GMT  
		Size: 7.5 MB (7505458 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a5af7d329c72948fdf6903caa611ad49e67bafb10ec80431873e03d3be5f24ed`  
		Last Modified: Thu, 05 Nov 2026 08:15:29 GMT  
		Size: 14.5 KB (14466 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:d351a3b2df27298c205d38f252d1908fc18384d2abf622208f3ff084562f0e32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.9 MB (188860197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a521b6e12abee61d30b618316c56378f2eb3a390bd779d315bc1a7d39683b152`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 15:18:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 15:18:43 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 15:18:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 15:18:43 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 15:18:45 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 15:19:36 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 15:19:37 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 15:19:37 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:c97e9d75b2e6da4e3fb7b0af2d3d5cae07d37a754f0b58190bd6a80c332cc2e1`  
		Last Modified: Thu, 05 Nov 2026 06:14:40 GMT  
		Size: 52.4 MB (52368620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b574893db9ee6473193896fa1f2b05ceb422958c9eba4ab46f69ee292f32bba`  
		Last Modified: Thu, 05 Nov 2026 15:20:19 GMT  
		Size: 52.7 MB (52667093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11021c666f0e77225905a7158a8210073d5d0e96b62b60e3f1403065e6a097e7`  
		Last Modified: Thu, 05 Nov 2026 15:20:20 GMT  
		Size: 83.8 MB (83823839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d3a5124b22975f60a2acfcaa203500f2d69476d131d146e1a8237086c7a6208`  
		Last Modified: Thu, 05 Nov 2026 15:20:17 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:d1d261c546dd7ea09c489200d9ceaae43e440307bd47dba874bb725962f7a142
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7519198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2cb908496d2332cf9dfdd685daef58833702337f27ab53f0f2a5900060f6ee0`

```dockerfile
```

-	Layers:
	-	`sha256:156877705a6c7ca30a2f99bc5a01bd46efd62405616db21bfdcc60fe6a476c83`  
		Last Modified: Thu, 05 Nov 2026 15:20:17 GMT  
		Size: 7.5 MB (7504802 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:51cd09454a6ede434ae85035621219b05d6ac3eaaa403a1b315a3103565db605`  
		Last Modified: Thu, 05 Nov 2026 15:20:17 GMT  
		Size: 14.4 KB (14396 bytes)  
		MIME: application/vnd.in-toto+json
