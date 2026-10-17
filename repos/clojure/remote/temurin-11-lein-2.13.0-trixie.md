## `clojure:temurin-11-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:525bb483e2c1a1ab3c750a09235b37f05a257d89c0f84ea8740e64ee8f8e8048
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-lein-2.13.0-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:356d5f0fc51920b495503fb6f99517d61ba1825407d6035f0da1e2ea8854fdc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.7 MB (218660255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4bb12c8f8fbb789bc1ea64bcde55a394481e32b8557c2c95d48b9f339975d94`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 01:47:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:47:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:47:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:47:00 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 01:47:00 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 01:47:00 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:48:23 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 01:48:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 01:48:23 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 01:48:25 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 01:48:25 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:4846f29007305297af653c57bf9b60ba8f676a38695c68d98460063442581671`  
		Last Modified: Tue, 06 Oct 2026 00:14:13 GMT  
		Size: 49.4 MB (49393200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cc3aed373e6463a5653bb1de52fc45735d4a62e0027f9de9d931e8a3806dc11`  
		Last Modified: Sat, 17 Oct 2026 01:48:45 GMT  
		Size: 145.9 MB (145864589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ba520b183e74791caf0878287e63291d76b738dab9cfaffd95f578f8d6025db`  
		Last Modified: Sat, 17 Oct 2026 01:48:42 GMT  
		Size: 18.9 MB (18887213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1957bb8ba264bef5256f238f9090fd30700708fbd2d7126d9c2d227373844f4c`  
		Last Modified: Sat, 17 Oct 2026 01:48:42 GMT  
		Size: 4.5 MB (4515221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:289d5f151d482f2a8fb1f06f53cbaffc38c5fef8b58efeddc61e40cb7437ea76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3862997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9829e532accfa7f381f4c962880cce4bd40f1ef47e3a659ba04970297a13549f`

```dockerfile
```

-	Layers:
	-	`sha256:dbb8e9363b721bda4b0275ac5d3dc67294f320186274390ac60e541d5a41f25f`  
		Last Modified: Sat, 17 Oct 2026 01:48:42 GMT  
		Size: 3.8 MB (3847263 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3816accce021843fb4a18c859b19f15275c8502558ca7d25f4696117b7a5a47f`  
		Last Modified: Sat, 17 Oct 2026 01:48:41 GMT  
		Size: 15.7 KB (15734 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e15b668f9495ddd90f5b7e9cbbea041defcd1c2f75584ed5a72c702ad1a06bad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.7 MB (215698470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76ee7fe4ce489931d034686d8c008321b9cdb3d9ff03fd09d6d5e45487c61675`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 01:47:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:47:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:47:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:47:12 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 01:47:12 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 01:47:12 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:48:36 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 01:48:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 01:48:36 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 01:48:38 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 01:48:38 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:df9831efb49cab24dec437e8482f2a9ddbd9e239131fa3ffe095dc1492081e1d`  
		Last Modified: Tue, 06 Oct 2026 00:13:30 GMT  
		Size: 49.8 MB (49761105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcfc476bf49f7a19e914c55742eef8a19ea86c18afe83f7341b06aad81eb3549`  
		Last Modified: Sat, 17 Oct 2026 01:48:59 GMT  
		Size: 142.6 MB (142576575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1308d72ed5e516ed711abfae6f409a929c2782156f3030e0bc33d2832f6006a8`  
		Last Modified: Sat, 17 Oct 2026 01:48:56 GMT  
		Size: 18.8 MB (18845528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce3f9a26b227cfc55199de524b002b2d816dcb6f8f0fb9c6179d0ae61aed01c6`  
		Last Modified: Sat, 17 Oct 2026 01:48:56 GMT  
		Size: 4.5 MB (4515230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:5e3b14f28110bb1ce043e6a3a4e99748c6b794a3990eeaf497338d0cee90a883
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3863975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7761912895a89344cf1fd8dba4bbef87d9aee81e88f8ffb81776c5c168e2d9e2`

```dockerfile
```

-	Layers:
	-	`sha256:a107eb68e5d6ad385fd0eacb017038d59947b9ce89973f9b67d6643d1916d300`  
		Last Modified: Sat, 17 Oct 2026 01:48:55 GMT  
		Size: 3.8 MB (3848121 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f4d68b0653dcefea1165fd3003d51e1e7d990770f54342038d1f6e940693b04a`  
		Last Modified: Sat, 17 Oct 2026 01:48:55 GMT  
		Size: 15.9 KB (15854 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:5b227a3741e1ea7bd54a199badfe72de129009e93a4e6d57bf4f2b38d7c3360d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.8 MB (209760282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:346cac49ad311795322cdff90e50707a5607d092acef710f791c0d6060bfb8b4`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 05:23:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 05:23:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 05:23:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 05:23:52 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 05:23:52 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 05:23:57 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 05:27:12 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 05:27:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 05:27:12 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 05:27:16 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 05:27:16 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:1216778738c2d0f00bc38a90447aff403e59888e07d78e8b1c4f2dde2aa2eded`  
		Last Modified: Tue, 06 Oct 2026 00:16:25 GMT  
		Size: 53.2 MB (53207124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bd40d33b78e6e0d28cec5774bf2db0a9378fd14854631e71320828086e27c35`  
		Last Modified: Sat, 17 Oct 2026 05:27:56 GMT  
		Size: 133.1 MB (133095149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d2131c618315e145549e354a30b2e28e4fd99f03e20a2d776d37603a24df8e4`  
		Last Modified: Sat, 17 Oct 2026 05:27:53 GMT  
		Size: 18.9 MB (18942753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2dc953bc414913ecf1585d928972e60ad1a59c699fa27f05c37bd6996590e1d`  
		Last Modified: Sat, 17 Oct 2026 05:27:52 GMT  
		Size: 4.5 MB (4515224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:cade5851c269d0923769ed5b1d4072ba0058ebf49e4a152e722e33da7e10c7f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3863423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bbb8f3b4315747f744d29f998ed4497732f6235414422e8cf2f7471a4e697a9`

```dockerfile
```

-	Layers:
	-	`sha256:1ddfb61e53b94774c8a60cd0a99a833e3198c6a80ccfb01e153da466a42ef6b1`  
		Last Modified: Sat, 17 Oct 2026 05:27:52 GMT  
		Size: 3.8 MB (3847646 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:22ab3db3afc2c020767a66c0862faa43c0e466e71f3344753de19319db0bc9e0`  
		Last Modified: Sat, 17 Oct 2026 05:27:52 GMT  
		Size: 15.8 KB (15777 bytes)  
		MIME: application/vnd.in-toto+json
