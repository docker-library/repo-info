## `clojure:temurin-8-tools-deps-trixie`

```console
$ docker pull clojure@sha256:f2374f953539cb6eb6bb6d750b97e2b1afdce8dd53034a4b3f322bebea4eb285
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:cdda0c05a545e5a662737a1c9478e1b4ef5e29d045817bf6b19101c83f3ae2e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.2 MB (187174413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:309da2199d53475e829ddce8c89043496297cbc70bfa829c50d1289a816058f9`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:06:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:06:44 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:06:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:06:44 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 08:06:44 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:07:00 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 08:07:00 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 08:07:00 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acaf498b0ad86868c98227af218ce895c646d63019b6db5f5465812d2c44afc9`  
		Last Modified: Thu, 05 Nov 2026 08:07:18 GMT  
		Size: 55.2 MB (55192251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ee7e87b600b172b03a8ba13b1c1cb162651d9b0432d68f4b3afb94743d86b5c`  
		Last Modified: Thu, 05 Nov 2026 08:07:19 GMT  
		Size: 82.6 MB (82569007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30ee24b996e5b55c04639f7f00be102c7b1a09d3677f75ed4485a6fdae058022`  
		Last Modified: Thu, 05 Nov 2026 08:07:16 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:8daed7082ef71195bfbb2f96f1800f6c1a8335be40a6ba9ef158a591528c6634
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7611445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae5b1fd7ff4c806e0f5757420e1d71ea184cdcd1af0c1914226393f436fab6fd`

```dockerfile
```

-	Layers:
	-	`sha256:5cb5b8125fb3a41dd53c185f8adf24c67f9a2beaad7218c7c19076b82731693d`  
		Last Modified: Thu, 05 Nov 2026 08:07:16 GMT  
		Size: 7.6 MB (7597121 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ae34267e92735d219b2be736be9a3493ab7bd986ef6151b5c02715631d263d94`  
		Last Modified: Thu, 05 Nov 2026 08:07:16 GMT  
		Size: 14.3 KB (14324 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:dbbe9d7cc80e98dcb787b9cbbdb6f4770af335455c71be9a21818b9bbdd48389
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.4 MB (186426003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdb501228f6cd2abd4e42430f041a9505d3cd28a72598e21aa781b73e3d6fc0d`
-	Default Command: `["clj"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:15:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:15:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:15:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:15:55 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 05 Nov 2026 08:15:55 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:16:13 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 05 Nov 2026 08:16:13 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 05 Nov 2026 08:16:13 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d25ed67f61a2acc4bf3cdae7e0b50bb45ea62ea8fc1a2af82c35324fe3810f2`  
		Last Modified: Thu, 05 Nov 2026 08:16:34 GMT  
		Size: 54.3 MB (54254278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cd22d82daf941679754035f96eb66bb772680a2d0ca641855ef2e712ac2ce5e`  
		Last Modified: Thu, 05 Nov 2026 08:16:34 GMT  
		Size: 82.4 MB (82392473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bd18afc18327411a3af7fbe5f49cd71f86e197328b6f46ea58fac22e92a9844`  
		Last Modified: Thu, 05 Nov 2026 08:16:31 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:82a7a0809e5ceded1612d80c7189df38f301671bc160b7162bd4bfe0af1b9022
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7618656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:825b7036a7ebea83ebf1f8964305a10d96093e01ef99dcbf5b4984941c3c0cdd`

```dockerfile
```

-	Layers:
	-	`sha256:d6eda8e1b766947538a5f8733f9babd1855ad07e122bf82dc8c8cea1134d9a91`  
		Last Modified: Thu, 05 Nov 2026 08:16:31 GMT  
		Size: 7.6 MB (7604214 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:440c171a911f1bf9ca6573d6ab129cc8b498567fabf85d2640b8e620afc6d28f`  
		Last Modified: Thu, 05 Nov 2026 08:16:31 GMT  
		Size: 14.4 KB (14442 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:425d797bdb2d95b960401985fd873790aeb370097a607b5bb7185036c871ee2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.9 MB (193887255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34cd22097f3f801ae123afa8377a8d7a703a65f29ee2c86394b214dcd66f7424`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 09:31:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 09:31:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 09:31:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 09:31:07 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 09:31:07 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 09:32:27 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 09:32:27 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 09:32:27 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:afc58b8a231a1e6a214ec81e1a281467fb0d1d7d88266448b5a56d1ec376a47f`  
		Last Modified: Wed, 28 Oct 2026 00:24:13 GMT  
		Size: 53.2 MB (53222242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0807dd773529f7bc375a801247db06a642acdb3aa4fa91fa7939c464f07880d`  
		Last Modified: Wed, 28 Oct 2026 09:33:30 GMT  
		Size: 52.7 MB (52667114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e03df28dd8101e75933f4802c70dd0bd77ded3eb1c0377f03d9e6a9e1d01f0f4`  
		Last Modified: Wed, 28 Oct 2026 09:33:31 GMT  
		Size: 88.0 MB (87997252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df207bd5dd233112ed6abe4a69b498bdfa08bd0cbc762f69085f5b2c200a8252`  
		Last Modified: Wed, 28 Oct 2026 09:33:27 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:8bf808f6b5553313b76d1485118010762bcdfb0d6d2f04b6cb0d073017f9d392
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7616505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:577328fe9bd227de4626c97f4e3f43ed3c40b4b2edfa3af760163d4c52a16abb`

```dockerfile
```

-	Layers:
	-	`sha256:7e5d01f849946a90ac8471cf95ce935e6aee9cffebd1a8110038ab7ff8bc5ab3`  
		Last Modified: Wed, 28 Oct 2026 09:33:28 GMT  
		Size: 7.6 MB (7602133 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea4841ee48876d7568e098752a677f496c6004c95158cc8b56c3822bd98790ad`  
		Last Modified: Wed, 28 Oct 2026 09:33:27 GMT  
		Size: 14.4 KB (14372 bytes)  
		MIME: application/vnd.in-toto+json
