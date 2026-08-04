## `clojure:temurin-11-tools-deps-1.12.5.1664-bullseye`

```console
$ docker pull clojure@sha256:a8c5311700f180f0fa0e6ba5f08071125d07f6892c3912c920f9d7fb07e09094
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-11-tools-deps-1.12.5.1664-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:23d362dddc0ccc6aa80ca1bf4a9b7e73cfca656acc3d3ba209942d1580a79358
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.2 MB (266182125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56ef0f8311877b547a053cf9d826f0f12d17bab41bc7afc9b19580e7d05b1cf1`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Tue, 04 Aug 2026 02:48:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:48:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:48:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:48:54 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:48:54 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:49:06 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:49:06 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:49:06 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:67de115811dc004af37113c6aa85eaaeb7c71fbf7fb79c2219111439cbf76c90`  
		Last Modified: Tue, 14 Jul 2026 00:14:39 GMT  
		Size: 53.8 MB (53776576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60d83798cd6e59a5574bb66312567a46dd13b45e86746cf6ecbd105db8dd5630`  
		Last Modified: Tue, 04 Aug 2026 02:49:29 GMT  
		Size: 145.9 MB (145886277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:607fc82747420f782ced47f8f5bd4b310266c4526f817a15afd221433d52dc84`  
		Last Modified: Tue, 04 Aug 2026 02:49:27 GMT  
		Size: 66.5 MB (66518628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:caf65413cf00328d92e885a51c17ca84491f267c18386b8adb3d6b4d40015be2`  
		Last Modified: Tue, 04 Aug 2026 02:49:24 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.5.1664-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:0bac8223b941cbcf5bedd07e67b3f62c57ca2d470c2e70a71c798563835f5f95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7439328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:771d547572973f4dc43f4caf0ee90bd1a748d8ae3177d18e59b3b3861d7a4a48`

```dockerfile
```

-	Layers:
	-	`sha256:263b7d4ebf95425941c6c3909496a972e96f1e71fb792c4c9270916810ffb12d`  
		Last Modified: Tue, 04 Aug 2026 02:49:24 GMT  
		Size: 7.4 MB (7424965 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:adca472871a8c52ac56d3542a5e66268feeba81d87a4513e19335709c35916b4`  
		Last Modified: Tue, 04 Aug 2026 02:49:24 GMT  
		Size: 14.4 KB (14363 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-tools-deps-1.12.5.1664-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e7f85c43f14af9041aaafee3a29a5d4ccb477f3d63c0810f712b5e3272347212
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.5 MB (261529272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f326c3780e7783ecb37855623b1ad713f7240432f6c9642b4f3ec4bd1db4f259`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Tue, 04 Aug 2026 02:49:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:49:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:49:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:49:03 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:49:03 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:49:16 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:49:16 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:49:16 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:05f35ed13b0f03b4d3292e29957ef64e978b7566be41843c7f2be1cede133720`  
		Last Modified: Tue, 14 Jul 2026 00:14:11 GMT  
		Size: 52.3 MB (52260890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5d2709f0871d2a5305c24e27a397d249f2791fd75f75da3e029cb1fb976fd23`  
		Last Modified: Tue, 04 Aug 2026 02:49:41 GMT  
		Size: 142.6 MB (142582246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f14fe5fcdb8567c6394343102cd98ad91c8b08676ae9a5099b08bfc96138528`  
		Last Modified: Tue, 04 Aug 2026 02:49:39 GMT  
		Size: 66.7 MB (66685489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:337ea600c602cb5b5ebb97bf6f55486d4c7174a5c6552e0786361fa9aaaef95f`  
		Last Modified: Tue, 04 Aug 2026 02:49:36 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-tools-deps-1.12.5.1664-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:36c23af977a3c189c23dd999436d8c55ac14a8fdc04e8390645889e86122b7f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7445163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ceb59761514405942dbf479baea11dfe7e66f8ea8bc94abbd545fc359fe8458`

```dockerfile
```

-	Layers:
	-	`sha256:dfe2def6c87c15b2464cbc8116eb94c81c755342ea6caee02fc4ea1fd6e59d8f`  
		Last Modified: Tue, 04 Aug 2026 02:49:36 GMT  
		Size: 7.4 MB (7430682 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f2f97546298a4c9558841d7d0bee2ae9ef7f0c4bd2a3fdf5f1d76eb38b6becd4`  
		Last Modified: Tue, 04 Aug 2026 02:49:36 GMT  
		Size: 14.5 KB (14481 bytes)  
		MIME: application/vnd.in-toto+json
