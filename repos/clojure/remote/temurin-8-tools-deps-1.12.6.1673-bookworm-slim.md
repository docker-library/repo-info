## `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm-slim`

```console
$ docker pull clojure@sha256:4f1e9f46242e762c96dc9fded58efc7900fe15f743f6c43c61737ec6513fef5c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:03925d9e36ce9ee8675c5aba7f4aa95e4145ac2965081553e0247f6fc8393486
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **150.1 MB (150119280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5db4ea65f452a4df218187034818081c26a693d5e8811ab73151ceae4678031d`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Fri, 25 Sep 2026 23:18:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:18:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:18:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:18:26 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 25 Sep 2026 23:18:26 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:18:39 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 25 Sep 2026 23:18:39 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 25 Sep 2026 23:18:39 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:774043ccc8ccd0d0833a9ee0792142ab7ad93df971e59dd248fbf82db16d0150`  
		Last Modified: Sat, 19 Sep 2026 00:03:16 GMT  
		Size: 28.2 MB (28238443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12b219fd2e54db9ccaae0357c01fb8cf6279e751ebf2b9e90f9bf088e7807735`  
		Last Modified: Fri, 25 Sep 2026 23:18:56 GMT  
		Size: 55.2 MB (55192249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f006c7a30d76f18bc21193b6cc6bbf31852c92120682c0f4f8f1e0f4edde068f`  
		Last Modified: Fri, 25 Sep 2026 23:18:56 GMT  
		Size: 66.7 MB (66687943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9906f9175275a27ee39940296f2aa28cb560781f06a1ea1f7cd02a939190211f`  
		Last Modified: Fri, 25 Sep 2026 23:18:53 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3f8aa4d3bcca00aa187e2c8d2d86baeed9bdc7b9054be06c34df77d54e4be794
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5254064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f863e2b5a00a835f16749ea9730b83584c980d4580bc69e49bd18ef6fa6e735`

```dockerfile
```

-	Layers:
	-	`sha256:acc7d40106019628cda62b690a6ec838088bffeb36c29dbbb13b932ea17a5c94`  
		Last Modified: Fri, 25 Sep 2026 23:18:54 GMT  
		Size: 5.2 MB (5239662 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9505c96f68ec0e5d1225147d5b10d060f1e931431ecca34d70662c637e31530c`  
		Last Modified: Fri, 25 Sep 2026 23:18:53 GMT  
		Size: 14.4 KB (14402 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:704dd499fee3c9913f4554ee177cefd35d7d27838e8d9a5a6865a1451bf9ae5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.1 MB (149060176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06032708cb60c1c3edf2782284bb0197fd882cc86882fb5789f9f70995384d6a`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Fri, 25 Sep 2026 23:16:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:16:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:16:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:16:10 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 25 Sep 2026 23:16:10 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:16:24 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 25 Sep 2026 23:16:24 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 25 Sep 2026 23:16:24 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:333125b5cee9fb6718bdcb523fc93b4adc71b7c37ada6146a20c193430e549b9`  
		Last Modified: Sat, 19 Sep 2026 00:03:02 GMT  
		Size: 28.1 MB (28123680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06cb3742d7c128af0ab17b026c84fe62a2cb47b6153f1d0077315b68659fdd82`  
		Last Modified: Fri, 25 Sep 2026 23:16:41 GMT  
		Size: 54.3 MB (54254273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:430e05c4a7141505c3195d437413bf09a89f1202199d3cdaff6be5d569081935`  
		Last Modified: Fri, 25 Sep 2026 23:16:41 GMT  
		Size: 66.7 MB (66681578 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c78ad5c7306026890d748c47ffab2bd24a8c096d3f623aad820986f73234ef3a`  
		Last Modified: Fri, 25 Sep 2026 23:16:39 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:fc8ac0a8b714c9e5e82ed4991594a074600de75d025b612d88a1ccdeaec7fa49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5260643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43f22854b08d16c37d332fb1ff28eba040773c380afd94bc123ed30ac66050a3`

```dockerfile
```

-	Layers:
	-	`sha256:a1fd329bb1514662b753c3e130c2119538c935cf13b053ac148ce8f850714e9c`  
		Last Modified: Fri, 25 Sep 2026 23:16:39 GMT  
		Size: 5.2 MB (5246123 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:514892e471ea39a2d62c97eb3ff845f0e15356db24e805fbf48c3a0bc8cbd94c`  
		Last Modified: Fri, 25 Sep 2026 23:16:39 GMT  
		Size: 14.5 KB (14520 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:131f007c4e46d2ea0bd82177d791e83b70ee25ff33688a433e4aab5118665efd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.3 MB (157254026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c8faf58e3f9cfa3554b0efcd74e584380fbbf45d03878aa3baaf2513054fb6b`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 07:35:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 07:35:11 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 07:35:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 07:35:11 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 19 Sep 2026 07:35:11 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 07:35:40 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 19 Sep 2026 07:35:40 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 19 Sep 2026 07:35:40 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:b165d89f1b791c34b9c20f2a31fc4c5d2df2528fb278dbc56b0e78f166c6b6b4`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 32.1 MB (32083564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:452a5786e1288207b49fb0e55b83e788de0cbecc006fd48385dc8890100805d1`  
		Last Modified: Sat, 19 Sep 2026 07:36:12 GMT  
		Size: 52.7 MB (52670662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12b2dd44bb96bc2561c8f7ce56da82404b342aae154a1605a3e745434e1bc4a6`  
		Last Modified: Sat, 19 Sep 2026 07:36:12 GMT  
		Size: 72.5 MB (72499154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e60d8fb1bfa39d65ff180df05ea43e976566c8cf5067c31236411c3a8a94057`  
		Last Modified: Sat, 19 Sep 2026 07:36:10 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:de958077babb296385b8fdc3b3468cb56252d20b89bf724e7c5844f180a6d5d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5259865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8296d8e6578bf1c18bed65671c89878ecc39ef2549175d57e5152384feb6e1a6`

```dockerfile
```

-	Layers:
	-	`sha256:f1444890f3ea05f05de38aeec14869d02d9d7314b4da352808059c86646ef736`  
		Last Modified: Sat, 19 Sep 2026 07:36:10 GMT  
		Size: 5.2 MB (5245415 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c4b4feb116bce97cd747597611522fe8b5bac33242d3ba87f85f778b7f083ce`  
		Last Modified: Sat, 19 Sep 2026 07:36:09 GMT  
		Size: 14.4 KB (14450 bytes)  
		MIME: application/vnd.in-toto+json
