## `clojure:temurin-11-tools-deps-bookworm`

```console
$ docker pull clojure@sha256:fb8970bb2251ab49de6e8bc47531fcaaa9e284fd529888fc9ed43ba6962ed636
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-bookworm` - linux; amd64

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

### `clojure:temurin-11-tools-deps-bookworm` - unknown; unknown

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

### `clojure:temurin-11-tools-deps-bookworm` - linux; arm64 variant v8

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

### `clojure:temurin-11-tools-deps-bookworm` - unknown; unknown

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

### `clojure:temurin-11-tools-deps-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:23c87f5ee7010dc8b92552fd083cab07d352de8653d1f6f8140192aa6506c865
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.5 MB (268465382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e9d2978f6f19b1c2282acbbc71a72814cb43de0e6c372ec60255d6b02345e44`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 07:39:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 07:39:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 07:39:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 07:39:15 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 12 Nov 2026 07:39:16 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 07:56:30 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 12 Nov 2026 07:56:31 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 12 Nov 2026 07:56:31 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:c97e9d75b2e6da4e3fb7b0af2d3d5cae07d37a754f0b58190bd6a80c332cc2e1`  
		Last Modified: Thu, 05 Nov 2026 06:14:40 GMT  
		Size: 52.4 MB (52368620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1d1049bf611e4e36df206803b6b1a21c41bdc08836e50b24d23176a364d6299`  
		Last Modified: Thu, 12 Nov 2026 07:45:39 GMT  
		Size: 132.3 MB (132272163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6279a703f62a9703c4a88dd102e7d16dc82038265e8a8439a87a33c2d5b81bf4`  
		Last Modified: Thu, 12 Nov 2026 07:57:23 GMT  
		Size: 83.8 MB (83823952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f35745fa50ee2660a8a169eaf6dc767e02a6635ea2a3060ad6aa232020ef7013`  
		Last Modified: Thu, 12 Nov 2026 07:57:21 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:357a16b955087e6b76bbaafab22fce02e723c1be53ab488dc30411d349f23436
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7415913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3945d536fe310edb0252b5503c6788fc5208114cd6cc1fd679a2c6d3632b981`

```dockerfile
```

-	Layers:
	-	`sha256:96338009fd1bacc2d4036086cfdda2477887452868868197a0fa916a5dc47c0c`  
		Last Modified: Thu, 12 Nov 2026 07:57:21 GMT  
		Size: 7.4 MB (7401502 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f7be28b2ad60a952ef22ab374c785bf5efec8f0a6c9236c00c5886b7f03c41c5`  
		Last Modified: Thu, 12 Nov 2026 07:57:21 GMT  
		Size: 14.4 KB (14411 bytes)  
		MIME: application/vnd.in-toto+json
