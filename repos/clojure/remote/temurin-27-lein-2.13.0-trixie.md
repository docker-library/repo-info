## `clojure:temurin-27-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:072cca5bc90518b7197bd2d3697b517d854886ef580f4c566c2607b6da0b9c4e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-lein-2.13.0-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:4fc2c31c1b7d7f25bd999c0aff175a4c45cc05acd36ca594faacfd39b904e4df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.4 MB (166435649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd6c7c97641e51a9b8b9ce01647a5e2e2c5bf7771f367d38d262003bd179de65`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:11:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:11:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:11:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:11:38 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 08:11:38 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 08:11:38 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:12:52 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 08:12:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 08:12:52 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 08:12:53 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 05 Nov 2026 08:12:54 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:12:54 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:12:54 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dec90dc7567cdc8e38c4c9a8466c2244df4279dede94068cb4567204f4084975`  
		Last Modified: Thu, 05 Nov 2026 08:13:12 GMT  
		Size: 93.6 MB (93622485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c227d62ab181eb805b97d7fcf43582b06f009e15b2b32a8f443d9c452e5bbf01`  
		Last Modified: Thu, 05 Nov 2026 08:13:10 GMT  
		Size: 18.9 MB (18885051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:730c097fb756e80095f8a5f72001c15168d72be65f5ac27eaffb39380e8b2538`  
		Last Modified: Thu, 05 Nov 2026 08:13:10 GMT  
		Size: 4.5 MB (4515176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:228f06f47e6665dd826628a9dc67b7ade17225e9117ca53bf5789e39c34c9b53`  
		Last Modified: Thu, 05 Nov 2026 08:13:09 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:8403941fe72f463534ddb4eec9964fd522ca3900638de03e7cacfb4bf68233a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3807805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5926f07c2a7b32db1b61b90ceaca987394d203ee04115379755ca7afab369917`

```dockerfile
```

-	Layers:
	-	`sha256:89f4607c5a94a2ca9dffccac76329c5f6d92d090a6f7f02dcd01c2e919c6be69`  
		Last Modified: Thu, 05 Nov 2026 08:13:10 GMT  
		Size: 3.8 MB (3790094 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e74a05e30d42763d16c5f081af34859527bd6b96b53d01787641977772ba83ac`  
		Last Modified: Thu, 05 Nov 2026 08:13:09 GMT  
		Size: 17.7 KB (17711 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:7a23969fae8a341fa5f9d7af818e60eca699a47004b5a517a47e53d1ca0d3fa8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.8 MB (165770437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d3260c4efc6a1ba417c469ac870eef5ac3005a412cb8a3d994638bcfe8c4f8c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 08:21:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:21:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:21:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:21:15 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 08:21:15 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 08:21:15 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:22:32 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 08:22:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 08:22:32 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 08:22:34 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 05 Nov 2026 08:22:34 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:22:34 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:22:34 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cce8b9cab85e19ea59e2bdb5555cec3b2697d9476e594adf403721ef429e80c9`  
		Last Modified: Thu, 05 Nov 2026 08:22:54 GMT  
		Size: 92.6 MB (92633134 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5ad7f4a54569876b0b3a6aa548081fbbd1620224b39a7de592b4fb668d57f63`  
		Last Modified: Thu, 05 Nov 2026 08:22:52 GMT  
		Size: 18.8 MB (18843060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:797a819b8444f9265d4dc77dd0c0ef63286e49ede6a4cfbb064e855b474c0ca3`  
		Last Modified: Thu, 05 Nov 2026 08:22:51 GMT  
		Size: 4.5 MB (4515209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06d700ad18d3f442d71a83030ac5ad7d4d1a7f4791beb5f3c04675df393053ab`  
		Last Modified: Thu, 05 Nov 2026 08:22:51 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:61f7e70f08bd1c4eaaa4ef00054b2753adb41723300b3d4aaee8ed146d11f37a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3808163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7767913f9412773fa8e570636f83787e7521e909e85f66ecebc18ddc3befc550`

```dockerfile
```

-	Layers:
	-	`sha256:d0d7509eb69e950fcc51426a2801f2929c8a0dea43e7c68840af7b903d0485e0`  
		Last Modified: Thu, 05 Nov 2026 08:22:51 GMT  
		Size: 3.8 MB (3790331 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:72ffd5be3dcd8a2de53ba142507e1f8c6a654906f7f94f739284abaaf9e7a6bf`  
		Last Modified: Thu, 05 Nov 2026 08:22:51 GMT  
		Size: 17.8 KB (17832 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-2.13.0-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:fbb7ba7870112566aee3a6554852692b452215a60f13788be208376349faab95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.9 MB (168936895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc395beb1a4d9c8b9969855944f881cd3428d27373c41e6f84e7e56458a8f931`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 16:18:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 16:18:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 16:18:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 16:18:50 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 16:18:50 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 16:18:50 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 16:22:58 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 16:22:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 16:22:58 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 16:23:01 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 05 Nov 2026 16:23:02 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 16:23:02 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 16:23:02 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:9acf5fc430af42e0444193402206b9d2b5c2c4692602efa65ff7c784c52790c2`  
		Last Modified: Thu, 05 Nov 2026 06:18:00 GMT  
		Size: 53.2 MB (53225589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09b78c766a2a835bace291ec5559602dcec41a0fbc2a9622471f9f897bc91fbf`  
		Last Modified: Thu, 05 Nov 2026 16:23:46 GMT  
		Size: 92.3 MB (92255828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:477b55f1fddcfec52181ff39c5bf81ce7f4c6819f594c116ad1606ea9bde7808`  
		Last Modified: Thu, 05 Nov 2026 16:23:44 GMT  
		Size: 18.9 MB (18939821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10843d9a46e4d9c523ee8335b800566c5b02a498721e7cef992c53aa5f0598f2`  
		Last Modified: Thu, 05 Nov 2026 16:23:44 GMT  
		Size: 4.5 MB (4515227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f910d22b414460b0f72157a73fe7c7ae62e7270a1d5e9d9f2a8841d8941691f`  
		Last Modified: Thu, 05 Nov 2026 16:23:43 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:9aac3ef00916c62c04ca127ade7a523d82ce9cc4f51d076737cde86ebd09be2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3792783 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ef91614829e2dc25d8a20972b2f470ae408f3a27b44974639099e61a8fadcee`

```dockerfile
```

-	Layers:
	-	`sha256:4653fe807e8e8f98c273ad1f545dbb520a3a7f4c3e3984e98db813b4aa83db67`  
		Last Modified: Thu, 05 Nov 2026 16:23:43 GMT  
		Size: 3.8 MB (3775028 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e919667cda0e83a89c5180c5d1ae8b8c03852efa818af4db35779e79a7c9e47`  
		Last Modified: Thu, 05 Nov 2026 16:23:43 GMT  
		Size: 17.8 KB (17755 bytes)  
		MIME: application/vnd.in-toto+json
