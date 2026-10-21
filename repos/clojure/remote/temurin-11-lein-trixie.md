## `clojure:temurin-11-lein-trixie`

```console
$ docker pull clojure@sha256:76b6ee513b6f14dde2c2967990c21332f72e9bbb2f56f8ec26523f0c25729716
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-lein-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:d5b777a9668e8ca92b2c5ef523e6328f43c47aceffcc8379a632e22b33059bc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.7 MB (218658939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6123ecac5274614b021e7cd483332ad35b76e2453c6ed70921172cdd7843c476`
-	Default Command: `["lein","repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:16:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:16:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:16:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:16:17 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 01:16:17 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 01:16:17 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:17:37 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 01:17:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 01:17:37 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 01:17:39 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 01:17:39 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:8d0037029946d2c6dabce18eceda79c533c5797ed1ee86f94084cb8cddaeea91`  
		Last Modified: Tue, 20 Oct 2026 23:30:54 GMT  
		Size: 49.4 MB (49393622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5215618649755aa182f740102c77bb96b3e369bda9dde8fa43af9d32db7725a9`  
		Last Modified: Wed, 21 Oct 2026 01:18:00 GMT  
		Size: 145.9 MB (145864518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40f63a7250a272871bd10e67e2d64f63b6bb2afaedc02fcfbbf4f7cdcf02d435`  
		Last Modified: Wed, 21 Oct 2026 01:17:57 GMT  
		Size: 18.9 MB (18885555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f693bfb7e3a41199d809823504df55a4d76ed28b8120344acb1114c7d2fcffe2`  
		Last Modified: Wed, 21 Oct 2026 01:17:56 GMT  
		Size: 4.5 MB (4515212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:c5474ee6d6b43dd99f2e192cc485d44f74452639a26b3982b83cde19c3470e92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3861720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a24aba9e963c5aa061f0c69d0e7269cf5017fef077ed9bf48f318930f8fff9af`

```dockerfile
```

-	Layers:
	-	`sha256:6874950925f492ef65d4ae222bb9c774d1bdaf6347054fd3b435fef0192e0efd`  
		Last Modified: Wed, 21 Oct 2026 01:17:56 GMT  
		Size: 3.8 MB (3845986 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c5a287ef036b3cd2a0720d574dcdef657bc350da749d1a3718b7af488a51de1`  
		Last Modified: Wed, 21 Oct 2026 01:17:56 GMT  
		Size: 15.7 KB (15734 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:f821cb404c40e6ef239859a5f65e3b3acb204fc2bcafb31ac74b98dd9c83b592
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.7 MB (215696715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93ed3004ba543c496ae76e154ae6fb1d31be9d1e9c48cf250e3eb5b8470ca3be`
-	Default Command: `["lein","repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 01:22:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:22:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:22:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:22:31 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 01:22:31 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 01:22:31 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:23:48 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 01:23:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 01:23:48 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 01:23:50 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 01:23:50 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:229b15d702220d963eaa48bcd8eab0ee7aa8f52996309c59cf44fce7deec3869`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 49.8 MB (49761602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:510cd6a2a4fdaccd43b283b2c0592366a937badabec80923cc67d5e05b2593d6`  
		Last Modified: Wed, 21 Oct 2026 01:24:10 GMT  
		Size: 142.6 MB (142576561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:365d60ec23cdd12e7fdf2772bdf875f86b967884525a111cbbe5b771e916ba46`  
		Last Modified: Wed, 21 Oct 2026 01:24:08 GMT  
		Size: 18.8 MB (18843288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49005629f24a23e0e25344e8fdbe5aa26ad335e7ffe2c95b4aa7b56acbfc300b`  
		Last Modified: Wed, 21 Oct 2026 01:24:07 GMT  
		Size: 4.5 MB (4515232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:3636c3e4015a515f9247d8b74f4a296ea1c3fcb909c1804347ebefedfb8d2f7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3862699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d958b9f6834dba7221ae7202b4a06578f39a7589ad845dcd3f281c672be7fd41`

```dockerfile
```

-	Layers:
	-	`sha256:08db8b86bfe7b1bbf481b82e66c05985f8bde49535754083bc24c79dfcef61ea`  
		Last Modified: Wed, 21 Oct 2026 01:24:07 GMT  
		Size: 3.8 MB (3846844 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c5e748e9fdbe5c7c7e7bf9d24b6eec4c502a989c2b5498d4a510cb466e7c0529`  
		Last Modified: Wed, 21 Oct 2026 01:24:07 GMT  
		Size: 15.9 KB (15855 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-trixie` - linux; ppc64le

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

### `clojure:temurin-11-lein-trixie` - unknown; unknown

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
