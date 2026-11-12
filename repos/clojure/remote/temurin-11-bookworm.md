## `clojure:temurin-11-bookworm`

```console
$ docker pull clojure@sha256:237529db55d0b661ad7e2ce770e0ac86ea22e476a6e4b1f2477f943c7a83e3f4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:9a8b1bd89ff106c74dad1b35af732e66764f879b104259ebb2e8e529f00b2155
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.4 MB (272448656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3134a0a19c75814e7a30e778799fe14b83cab6bb9888a6a0586340de5162ef78`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 00:46:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 00:46:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 00:46:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 00:46:15 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 12 Nov 2026 00:46:15 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 00:46:30 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 12 Nov 2026 00:46:30 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 12 Nov 2026 00:46:30 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf97fd733cd4525c381215d937a5d5129d3647ee26930ec57f250de6a2eeebb1`  
		Last Modified: Thu, 12 Nov 2026 00:46:54 GMT  
		Size: 145.9 MB (145923091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d1c170f698df680b55cdfbc0455ea0e2d1381b468275d7ce878860c9c25a04e`  
		Last Modified: Thu, 12 Nov 2026 00:46:52 GMT  
		Size: 78.0 MB (77998435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23195e173e1cf9d7d0db4f4851f229ab1aa77355744b029a128b66c904e6f003`  
		Last Modified: Thu, 12 Nov 2026 00:46:49 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:ec445c6f59de232efbb899c37eed14ffbb3a5026f1e206b4d9595cfffeacc3c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7412514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a9ef1aaa50105fe2deb2c32ac05a02b9d34b29bc1cd73020ee03b4fe7bbdf1e`

```dockerfile
```

-	Layers:
	-	`sha256:32b9f9d0ae895cb681ff7e9e58ce6fb385f2e5311a8126b35286c9d40548bfcf`  
		Last Modified: Thu, 12 Nov 2026 00:46:50 GMT  
		Size: 7.4 MB (7398151 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bc5f1db33d8dbf2bc6cd2363f7054defab88988a19c81ab1c6a7618efe34c0e0`  
		Last Modified: Thu, 12 Nov 2026 00:46:49 GMT  
		Size: 14.4 KB (14363 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:996b5071cdaf071db626270410811ee87506f45bbf98ee6a9e1c4a51edfc306e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.0 MB (269033810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6140704debf096a11c29c326d9cc293127e978a3b61ef5600995dca841a5f57d`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 01:01:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 01:01:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 01:01:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 01:01:34 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 12 Nov 2026 01:01:34 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 01:01:49 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 12 Nov 2026 01:01:49 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 12 Nov 2026 01:01:49 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae60081c47ff302635d8df39d05a30f241c9a10f9fc192a161f6e4c62c992122`  
		Last Modified: Thu, 12 Nov 2026 01:02:14 GMT  
		Size: 142.6 MB (142621057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f2afc922d1a6b099797a111bbe339b8eab575b5c16ef5b7aa59a2dd374fd10b`  
		Last Modified: Thu, 12 Nov 2026 01:02:13 GMT  
		Size: 78.0 MB (77999653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4fa23e17f2790efc96e65f9c2643f2e209ee87fe5813f5724517a613c2a9b6d`  
		Last Modified: Thu, 12 Nov 2026 01:02:09 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:a4e3745a61b7013e256999e8c4d19663be91ad502673bf6764e0fe8d13d89f4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7419013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c1fbcef6d12a6885345926a31b6cf75cc06455ffeb638d9e101b7965db04fe6`

```dockerfile
```

-	Layers:
	-	`sha256:6762504402bba44abfdb324a5749601f5813ae5bc2f609f853dbe91f2a1d8891`  
		Last Modified: Thu, 12 Nov 2026 01:02:10 GMT  
		Size: 7.4 MB (7404532 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:574b2606a3b57d70dd23a83c260b2e84c22e85cb9cc5d0c1f4d90898e339b1ab`  
		Last Modified: Thu, 12 Nov 2026 01:02:09 GMT  
		Size: 14.5 KB (14481 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:ddfea6ac15ec528e0456378dd3e84a8f20a2f9365e2444ef4147c15fa3142d65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.5 MB (268465774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7c1e124a2bf828fd2f6d7720f3ac8481bd22ca2ba46e40070b570c8cb6fac46`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 01:51:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 01:51:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 01:51:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 01:51:37 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 01:51:37 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 02:18:51 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 02:18:54 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 02:18:54 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:c97e9d75b2e6da4e3fb7b0af2d3d5cae07d37a754f0b58190bd6a80c332cc2e1`  
		Last Modified: Thu, 05 Nov 2026 06:14:40 GMT  
		Size: 52.4 MB (52368620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c99480d32360f3e8371c7b109fa06ad2a0c77407781fa839292f976381012efb`  
		Last Modified: Tue, 10 Nov 2026 01:56:09 GMT  
		Size: 132.3 MB (132272201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df2c85ea7cf52c9f67807e615122aa43cd80415d5625afa9ae6bff7c28c8f49d`  
		Last Modified: Tue, 10 Nov 2026 02:19:38 GMT  
		Size: 83.8 MB (83824307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91507b484dedc7cabfba9c1cbe1da7ad3f7b62ddf740cb05a455fd0c315d009b`  
		Last Modified: Tue, 10 Nov 2026 02:19:36 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:00848079a2f34dc92e7437e4c6493a5c74f7b0235864b95adef1117caf1bd7e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7415913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94df6c617deb24c566342a627ac491c7756942f54eecc1a6329b32b8dd0fdb5b`

```dockerfile
```

-	Layers:
	-	`sha256:549f9594fb2a797c5491660d4b8b245ebc83a93c4b663849ee7d24ce735b50ad`  
		Last Modified: Tue, 10 Nov 2026 02:19:36 GMT  
		Size: 7.4 MB (7401502 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a81092e8eb37683cbe39e07f44c4ee1587bc481925276ce74b4cb0c8957f589d`  
		Last Modified: Tue, 10 Nov 2026 02:19:36 GMT  
		Size: 14.4 KB (14411 bytes)  
		MIME: application/vnd.in-toto+json
