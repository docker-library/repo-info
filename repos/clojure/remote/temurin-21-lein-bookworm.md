## `clojure:temurin-21-lein-bookworm`

```console
$ docker pull clojure@sha256:2a46f941562efe09ad52fe64af23902aaeb176dc6b43634db9d1df1e13b392aa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `clojure:temurin-21-lein-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:d1d8b917d328b5893b5380cdb13313aeff000b2d08af9dd67d76d9f47d6814c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.3 MB (231297494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44046ad9041179fc7d60a2c3d19c344e6d87a37f47b461f60dc0543ed397543e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:51:11 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:51:11 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:51:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:51:11 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:51:11 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:51:11 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:52:18 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:52:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:52:18 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:52:20 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:52:20 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:52:20 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:52:20 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa617040dcdf29b5750ef711d8e370c112a2f83354bb867dbce1c5e962b50c4c`  
		Last Modified: Tue, 04 Aug 2026 02:52:41 GMT  
		Size: 158.2 MB (158166919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05e8f2b812619257cf277e992c3b9ba2d4d854ca606301d92b107d01a6f2ac31`  
		Last Modified: Tue, 04 Aug 2026 02:52:38 GMT  
		Size: 20.1 MB (20117535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:312d343fd194790602f6919b58c94c425c86cf628b0715063d2d9255d2b3f81a`  
		Last Modified: Tue, 04 Aug 2026 02:52:38 GMT  
		Size: 4.5 MB (4515206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11b8ec4a48d309b2bd2f3d1d28746b6118117a7ffd3e928318df1813ee9562ab`  
		Last Modified: Tue, 04 Aug 2026 02:52:37 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:75b7841264d8ea1f3a12503cf8a522405e7972505a32c79444dc760803698e19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4304944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95f4a013e5f3c95756f27111af12e8cb0625a56fe6ad16172f9edfc063758c67`

```dockerfile
```

-	Layers:
	-	`sha256:996c5963559b0cbc8f7fcb821641b4a1e459290f41f1888575c0474a03bd584e`  
		Last Modified: Tue, 04 Aug 2026 02:52:38 GMT  
		Size: 4.3 MB (4286556 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4d4f45502f0866ecc3101058befc356a1ebf6f1fc054c7203e0532d1f18870fc`  
		Last Modified: Tue, 04 Aug 2026 02:52:37 GMT  
		Size: 18.4 KB (18388 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:a98a07d38edf509b570e68d35db2e1c898f889d47523480457a1c099a62b04af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.3 MB (229300992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:676500fcc854f695cb80e3b05b55049aa50ea00d150356f6ef94928b9a306db0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:51:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:51:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:51:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:51:39 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:51:39 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:51:39 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:52:47 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:52:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:52:47 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:52:49 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:52:49 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:52:49 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:52:49 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8abbaca1f5abe975b97e1631ae8eaa3d44d2fcf98d19e76e4f6c165c24122069`  
		Last Modified: Tue, 04 Aug 2026 02:53:11 GMT  
		Size: 156.5 MB (156461250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28502a07a7deaa1df8c1caf214ec2cbb3db007ca24e1f0ffbe82082ef12565d5`  
		Last Modified: Tue, 04 Aug 2026 02:53:09 GMT  
		Size: 19.9 MB (19940408 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd849a840666352af4ef921c9cf1260f63d3e49537156d5abaab420d2315be36`  
		Last Modified: Tue, 04 Aug 2026 02:53:08 GMT  
		Size: 4.5 MB (4515215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:835738ca050677bfc45a2257d4937434574de149b812e7353aa1072807db7f27`  
		Last Modified: Tue, 04 Aug 2026 02:53:08 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:ecda3cbb9118c217aadaa1fc5ecc8708e771a97f94b5f13d70a51ddbe9b08ab0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4304727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:769fa67393156aa744c09b6ab9f4a5611a2f117798223b704236dbc53a301b8a`

```dockerfile
```

-	Layers:
	-	`sha256:471cae0582afad110eac54fd37cf451231606d8cb72f1dd4a39392cf354b46b9`  
		Last Modified: Tue, 04 Aug 2026 02:53:08 GMT  
		Size: 4.3 MB (4286195 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d188bda02d2d42f290a92569c31c858d0424e9ac3153f204f3173b83a620fa59`  
		Last Modified: Tue, 04 Aug 2026 02:53:08 GMT  
		Size: 18.5 KB (18532 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:32dfafd36a28ce7c195dcbc1997b6ce45ea29c601cb0a589926956dd3a2ce60c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.5 MB (235532610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98d24af105adbc2de19a63a3f1ac651807e2f780a07ebf9b0632763e95eb9094`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 02:48:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 02:48:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 02:48:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 02:48:26 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 02:48:26 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 02:48:27 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 02:50:51 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 02:50:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 02:50:51 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 02:50:54 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 02:50:55 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 02:50:55 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 02:50:55 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:380d3eabd945505d4db48078d6d4aeda6a011b9da5c9767fd7ea92fdb78f37f3`  
		Last Modified: Tue, 14 Jul 2026 00:12:57 GMT  
		Size: 52.3 MB (52341834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29c7687e3e503f67f28ed48874231824dfe0d502900eb690ce26123c0fce6c77`  
		Last Modified: Thu, 16 Jul 2026 02:51:42 GMT  
		Size: 158.3 MB (158343218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0b141c068c0836395acb040834453d9668ff9f2af27b08904be6bf16681b3bf`  
		Last Modified: Thu, 16 Jul 2026 02:51:39 GMT  
		Size: 20.3 MB (20331904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0c7444e0a0a93a2deef5d221fa926ec40dd28e8cb234dfadaa4c1c0e97083bb`  
		Last Modified: Thu, 16 Jul 2026 02:51:38 GMT  
		Size: 4.5 MB (4515225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d8c2c6e8ea4cb0c6744003d40f2ef5de48f50ef51aca033632064f536a8557a`  
		Last Modified: Thu, 16 Jul 2026 02:51:37 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:1af8a612d97f3eb98663609d8f2e6d22d58fb8c0b89502d0f1c6a72c32d7a141
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4306872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02e7d3ad2928041f65a68ea86a7d5101ef035b690758cf57163a118f3515a1f3`

```dockerfile
```

-	Layers:
	-	`sha256:27f04cc93c118c1455fdcc1248fb57a013ab34e427eaecf0c8546d8360d11391`  
		Last Modified: Thu, 16 Jul 2026 02:51:38 GMT  
		Size: 4.3 MB (4288429 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7bcb266bf2d02652ea15bd8266f7ffbadabba1fe516238e0156ccacb1c6cdb57`  
		Last Modified: Thu, 16 Jul 2026 02:51:38 GMT  
		Size: 18.4 KB (18443 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-bookworm` - linux; s390x

```console
$ docker pull clojure@sha256:aa4ebd343cebd7d7689a6b8930ba40bf4c22d47dac77e0e95f82bf08005de2bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.8 MB (218831462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eefc69b1948cf206c96086178b8e9cdca0a68e1b90138a51118ca73fbe2ae3e9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:56:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:56:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:56:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:56:51 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:56:51 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:56:51 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:57:55 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:57:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:57:55 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:57:57 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:57:57 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:57:57 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:57:57 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85dcfc051b008b074bbe299ec56bc68d10c2e3984c5f1bfe2d60af60ed6ea50d`  
		Last Modified: Tue, 04 Aug 2026 02:58:24 GMT  
		Size: 147.4 MB (147388364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f16add03dbc7ad3a915fb8971784b949fdae243993c084b906e1c4ae78b7cdef`  
		Last Modified: Tue, 04 Aug 2026 02:58:21 GMT  
		Size: 19.8 MB (19770178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58439bb24efda4a8f11d7f79546c0c1afdc82e69db24b9f08bcc238d44581b4a`  
		Last Modified: Tue, 04 Aug 2026 02:58:21 GMT  
		Size: 4.5 MB (4515210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff2c73ae5e6c530d760f06e2fa2d4681a9511780e7b8c82e196d93a7247791c8`  
		Last Modified: Tue, 04 Aug 2026 02:58:21 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:76f7ebe3d1770ee8520c5212dd0d498dc4f506ad4a4cfa8f81d4d0b4951e6918
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4296758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21ffce61ae4712fb824cf61f664ff217a12f133f87b9bca59c73bf42800e124a`

```dockerfile
```

-	Layers:
	-	`sha256:6d15e7eb1cb7f7605af14840e26212afd86a5c2cd0a351bcfb207d63d6aec71e`  
		Last Modified: Tue, 04 Aug 2026 02:58:21 GMT  
		Size: 4.3 MB (4278370 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c1d1f3f7d0439e4710df003ed5c7f3cc4583548c1a1fd0c442b86598d460971`  
		Last Modified: Tue, 04 Aug 2026 02:58:21 GMT  
		Size: 18.4 KB (18388 bytes)  
		MIME: application/vnd.in-toto+json
