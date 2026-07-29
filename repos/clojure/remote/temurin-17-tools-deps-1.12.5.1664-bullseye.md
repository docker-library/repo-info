## `clojure:temurin-17-tools-deps-1.12.5.1664-bullseye`

```console
$ docker pull clojure@sha256:7074d77723c8f0b96c4e52b62fe673d90a1f656bcf6627d4a77de05c2c30489d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-1.12.5.1664-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:678d41a460293d8d37273ca120bfabccf623f7e339551404303a233b912e49a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.2 MB (266202612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f127d7afc9bf31616b6437dbed1c0d46913282c0b752882cd33b5aaec420512`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Wed, 29 Jul 2026 17:56:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 17:56:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 17:56:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 17:56:00 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 17:56:00 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 17:56:12 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 17:56:12 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 17:56:12 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 17:56:12 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 17:56:12 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:67de115811dc004af37113c6aa85eaaeb7c71fbf7fb79c2219111439cbf76c90`  
		Last Modified: Tue, 14 Jul 2026 00:14:39 GMT  
		Size: 53.8 MB (53776576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad1596c56207f90bba73b194e4fa492e127791966857900a050a85d8a182a2f3`  
		Last Modified: Wed, 29 Jul 2026 17:56:33 GMT  
		Size: 145.9 MB (145906290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddeeeb91c62003e9abdb2e0a2c325e55ca95713b04cc968791a30148a9e2635c`  
		Last Modified: Wed, 29 Jul 2026 17:56:32 GMT  
		Size: 66.5 MB (66518703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d1822eef443ecc65890037eab9371adc0f5b9262433f4c48b5a86d4b7c60729`  
		Last Modified: Wed, 29 Jul 2026 17:56:29 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0feafb1e0dd3e335e8fb9b65d20637e5b8dd872314559b6ccd101a820b4deb51`  
		Last Modified: Wed, 29 Jul 2026 17:56:28 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.5.1664-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:7d5c288d2cf97c88bc0b889f2fa0dd61cfa291ec6ec7dc51e499aa0a0def6b98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7421381 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbecac815b148bdf435f7e5a7238df1fed393ae29f26875cfa1340a14dd43e48`

```dockerfile
```

-	Layers:
	-	`sha256:7ccffed21994dafce7c4d46658088fe781fa2e42a6017a51effa96f4adb49e50`  
		Last Modified: Wed, 29 Jul 2026 17:56:29 GMT  
		Size: 7.4 MB (7405449 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:291d07f8e42087e4324ac0d8a72074a5bb76726ca2a281f6fc6b80bc72b6457e`  
		Last Modified: Wed, 29 Jul 2026 17:56:28 GMT  
		Size: 15.9 KB (15932 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.5.1664-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:dce3f9fe686d1b63441ac19f036f06a0858a8853667d0febc99c7aede6eb6a60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.7 MB (263671348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07be53ec7d6208236cb6cf6e8be5cbeb6221c107c2bb52ad23b3d5aad3dbb6b7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Wed, 29 Jul 2026 18:04:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:04:43 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:04:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:04:43 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:04:43 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:04:57 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:04:57 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:04:57 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:04:57 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:04:57 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:05f35ed13b0f03b4d3292e29957ef64e978b7566be41843c7f2be1cede133720`  
		Last Modified: Tue, 14 Jul 2026 00:14:11 GMT  
		Size: 52.3 MB (52260890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ef8d22e3b8d5efcb280fc66ef99debd7402cfdc65a983a9fd8eee6e964bf3bb`  
		Last Modified: Wed, 29 Jul 2026 18:05:20 GMT  
		Size: 144.7 MB (144724322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:169b996f3ba8e0a9120e4935438991ed9720abde7fafd7b416285ed5bed1ddec`  
		Last Modified: Wed, 29 Jul 2026 18:05:19 GMT  
		Size: 66.7 MB (66685095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:795fa3d45e3044bc84feaf8198a077ebd1e31d3f574a3973b84678627c1b0428`  
		Last Modified: Wed, 29 Jul 2026 18:05:16 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:287004fd7db7a97947421ce6b90c75de7918202d4ccd801e6a5b210a3bcd48eb`  
		Last Modified: Wed, 29 Jul 2026 18:05:16 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.5.1664-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:2fb4d7d987834c41aed10abc470751d6da305ec5888ba39f6d2625a69a021b4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7426598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c6b17eb12b8e52a1f9bbdc1a6a1b2623a788ccd277da3a933af2308c331cfcd`

```dockerfile
```

-	Layers:
	-	`sha256:23236beb7852382116735224026e975dafa011e821e98182ccfdf13cf825d9ca`  
		Last Modified: Wed, 29 Jul 2026 18:05:17 GMT  
		Size: 7.4 MB (7410548 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cf36035db226c37c71ae6054a1378d726ef8ba5da41e3e818ea4cac860eaf8c5`  
		Last Modified: Wed, 29 Jul 2026 18:05:16 GMT  
		Size: 16.1 KB (16050 bytes)  
		MIME: application/vnd.in-toto+json
