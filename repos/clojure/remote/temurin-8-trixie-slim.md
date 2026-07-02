## `clojure:temurin-8-trixie-slim`

```console
$ docker pull clojure@sha256:1f3e2cea677b849ae69782170b9e8417b6c34e1e1d9f33d223b1c9e90132763b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:7a6f93fb1841a6b5bf08b093a200100a8f72d9a17de9588fdd2e1fd64ee90998
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.9 MB (153936009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07f18fb466d9dc465c0c70428661a1d6b78585f40bb0f003f69d0d87d4865439`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:47:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:47:47 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:47:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:47:47 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:47:47 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:48:03 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:48:03 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:48:03 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:e95a6c7ea7d49b37920899b023ecd0e32796c976c1748491f76cae53ba86d13a`  
		Last Modified: Wed, 24 Jun 2026 00:28:31 GMT  
		Size: 29.8 MB (29785419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c173fb5f1e3a87b6ce827ea54aacf26bb4790dc9f1fd0ef224da7fcdacd12622`  
		Last Modified: Thu, 02 Jul 2026 05:48:21 GMT  
		Size: 55.2 MB (55198715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dfe66431537a269a0159a63d178ac7959c69c817999cc35f907da1d93f16219`  
		Last Modified: Thu, 02 Jul 2026 05:48:22 GMT  
		Size: 69.0 MB (68951228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2ad4abba1326859ddca9f385b66b0365a1245e11deed68771c9aab6794cd089`  
		Last Modified: Thu, 02 Jul 2026 05:48:18 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3ab3e4521faf0cdc1960e96164ddd33fbd234e11ecc14dbcc27f33ce3921d419
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5392020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fdbe6c6c26bcfdcf396fc545ceb9fd24433bdb8e2340eed27200f8a62d5ef9f`

```dockerfile
```

-	Layers:
	-	`sha256:5e197aa77629c02c686670afab51acb112e45a1553c380ff85d73d1b4c73cd0c`  
		Last Modified: Thu, 02 Jul 2026 05:48:20 GMT  
		Size: 5.4 MB (5377638 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:154dbee3de066be6af4a1d5ac8b63dcdf74c58c208abd6d798b2dfb1f8a027f3`  
		Last Modified: Thu, 02 Jul 2026 05:48:18 GMT  
		Size: 14.4 KB (14382 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:4a9c26177470940563b5f9d6f48aa8ae052f2452133ff35c13a98b8014991e14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.2 MB (153199922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3074ee3126ffc6c86899a53c4eccd96c14762bc0d0e866ee5938588e533eb91`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:48:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:48:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:48:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:48:07 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 05:48:07 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:48:24 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 05:48:24 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 05:48:24 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bf2dbebe678441aa7df53fd42ab5757b58c60c33f541a62a8271f9d1228d1f3`  
		Last Modified: Thu, 02 Jul 2026 05:48:42 GMT  
		Size: 54.3 MB (54272903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f49796f3b023bbf7c1223180d67929a7d084a124eb22c293f9e98f41cc98282c`  
		Last Modified: Thu, 02 Jul 2026 05:48:43 GMT  
		Size: 68.8 MB (68777823 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:292f4e30535f346e31020b95c4942571d79b735813faf7faa5cc66abae8f6398`  
		Last Modified: Thu, 02 Jul 2026 05:48:40 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f7851b80d14d5cf259daca4147ee8d57369d6cca91a8a56fc34849ec2acdaf7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5398599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b237ecf27ea3ea981906874998f4ab4b47e92712e334d619ec1a14ce6af6351`

```dockerfile
```

-	Layers:
	-	`sha256:a63f2d65e627c7c54b16b1f359d3acb5e666d4fea41b00d1879915a89b06f71c`  
		Last Modified: Thu, 02 Jul 2026 05:48:40 GMT  
		Size: 5.4 MB (5384099 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:504bbde81575b228cf41825154b3629a4c69487f7536c2f5d9901ee2a307616b`  
		Last Modified: Thu, 02 Jul 2026 05:48:39 GMT  
		Size: 14.5 KB (14500 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:0ff2e6213daf917ad6ee24743d4569d86614a642fe0d9300fa80ae9b7ccdbee2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.6 MB (160646337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09a38748a42b5e9c41e08313856564cd64af05d7f421aedd3381ec5604c6f25f`
-	Default Command: `["clj"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 06:49:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 06:49:11 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 06:49:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 06:49:11 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 06:49:11 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 06:50:05 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 06:50:05 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 06:50:05 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:639e1c13483ea279c94219be2736856262d8dd2efeff3e6d309f11a66aba21fb`  
		Last Modified: Wed, 24 Jun 2026 00:30:29 GMT  
		Size: 33.6 MB (33606388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df3326ec5eeb6f04a77913d8b1a260f40592e39f924cbc42ad6096f9e1347604`  
		Last Modified: Thu, 02 Jul 2026 06:50:45 GMT  
		Size: 52.7 MB (52669138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44ac8d5b95c07847113559b3d396f3ecaa6cee3ed73f2560d7d4c4d31d47c130`  
		Last Modified: Thu, 02 Jul 2026 06:50:45 GMT  
		Size: 74.4 MB (74370166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:184fbd22e1112b0f6a82b93aef62476af1c022b7896230328c0e0dae9697e169`  
		Last Modified: Thu, 02 Jul 2026 06:50:41 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:f1765a7811ce28b449a44913b326318550acd11e77ce6c2f529ef24f93a6a5e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5397034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39d1f2ab016b4bbe76e2141e8defb2903862047a3b9416429e08fb20a0389304`

```dockerfile
```

-	Layers:
	-	`sha256:da7880f2f94016fef72b1ce8884813c64073fc2ac7ef2dd8c5ba15bac833d6f2`  
		Last Modified: Thu, 02 Jul 2026 06:50:42 GMT  
		Size: 5.4 MB (5382604 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd61e773bdb023b103c0f11fbcd66c83e382b5ed4f08b4392362543c2b766931`  
		Last Modified: Thu, 02 Jul 2026 06:50:41 GMT  
		Size: 14.4 KB (14430 bytes)  
		MIME: application/vnd.in-toto+json
