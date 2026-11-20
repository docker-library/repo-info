## `clojure:temurin-8-tools-deps-1.12.7.1681-trixie`

```console
$ docker pull clojure@sha256:fc5e9bceb939ff6d4da71a76ffed798dd771d1a0a5abbe625f81451143374601
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-1.12.7.1681-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:42434cf510a508ad51e7c4e3d1b4f9b0453440720f34ad363afbf1f52ecd8028
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.2 MB (187192357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a28bc79eef0b885cb8066c631eba34a80be5b73b591d05f79385f801c0a22f4`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 22:06:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:06:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:06:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:06:49 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:06:49 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:07:06 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:07:07 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:07:07 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38a1c4b9c6120fd89115f5054f77d974331ce45e6892a8a6c710de69d4e52488`  
		Last Modified: Thu, 19 Nov 2026 22:07:24 GMT  
		Size: 55.2 MB (55207929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:867a9cd01bf9228277e74e8bc8b39a335e8997e24dcc5f2aa55d034a7630697d`  
		Last Modified: Thu, 19 Nov 2026 22:07:24 GMT  
		Size: 82.6 MB (82571274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb9bd7fbd154f7734cb528e6f94e9e60b9559f80def45e440abbc3eee5cc5b9c`  
		Last Modified: Thu, 19 Nov 2026 22:07:22 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.7.1681-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:c48df475dc8ec74f27ca5e696ed0eb9e7515f740e5be8401ae8bd146cb0718fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7611447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f359d614adc09a609332dbffbcdb81d3f6d2bb384b36f0848f587f5136fc235`

```dockerfile
```

-	Layers:
	-	`sha256:8661e21d3dab0dc8246507a72c39c76adf5c97845d34b1d7453c54e00f6944fd`  
		Last Modified: Thu, 19 Nov 2026 22:07:22 GMT  
		Size: 7.6 MB (7597123 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2784559b927b83c395a2b0a4db49ed8be989039195c6f6ee882a23572083e87b`  
		Last Modified: Thu, 19 Nov 2026 22:07:21 GMT  
		Size: 14.3 KB (14324 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.7.1681-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:c1ea35262a5f19cc184cdc4a1cd050dca19ad7cb2d135651d7274c8d3a1acf23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.4 MB (186443475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9a9da9b94bc763a371fa55bea8ed324753ed8f9ed88c4fe0cd60c4846ba6442`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 22:05:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:05:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:05:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:05:10 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:05:10 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:05:29 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:05:29 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:05:29 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c85776006ea3d216f734b64af4a8f42e981ad3cb514b133edc8051a738afe20`  
		Last Modified: Thu, 19 Nov 2026 22:05:49 GMT  
		Size: 54.3 MB (54270351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48a844a47aab38be5e386c0ff7ed0c33c827c2a50c5f902fc4a6b484566147be`  
		Last Modified: Thu, 19 Nov 2026 22:05:50 GMT  
		Size: 82.4 MB (82393874 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:279a3398057a69e10996de7144d03aa6d84b89e8206760a6cc9ac3915823d72c`  
		Last Modified: Thu, 19 Nov 2026 22:05:46 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.7.1681-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:e6450c5b2f41f2563c63bb3871c0bef50e1401c849364ada22129e79447fc5d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7618658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e52a889a34293cf8ec650bd1993a2ad9b85e10e06367b573743ccea3b32d6377`

```dockerfile
```

-	Layers:
	-	`sha256:8f82fa4d05fbd44ae39b91d09a2951ddee58da521fe6264196c09d9f192ac579`  
		Last Modified: Thu, 19 Nov 2026 22:05:47 GMT  
		Size: 7.6 MB (7604216 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bfaccab0e2e47f43e82d9b61b354351a37442af99790d23bb1f030945f10ce80`  
		Last Modified: Thu, 19 Nov 2026 22:05:46 GMT  
		Size: 14.4 KB (14442 bytes)  
		MIME: application/vnd.in-toto+json
