## `clojure:temurin-11-lein-trixie-slim`

```console
$ docker pull clojure@sha256:0b9edddb36216073002263386df1898bd93f46924f9e9cc55e97ab461cea5b49
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

### `clojure:temurin-11-lein-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:9b0080e3a55c0b7950239471e0be8d8f8cbabdc58632d361cf0446eb9ec62344
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.9 MB (196941644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03635bb9199c6f12823c83e4063114be66b2f28d54a6ffc7abc852e2f06d4173`
-	Default Command: `["lein","repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:48:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:48:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:48:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:48:34 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:48:34 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:48:34 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:49:44 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:49:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:49:44 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:49:45 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:49:45 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:e95a6c7ea7d49b37920899b023ecd0e32796c976c1748491f76cae53ba86d13a`  
		Last Modified: Wed, 24 Jun 2026 00:28:31 GMT  
		Size: 29.8 MB (29785419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:985dac55e713ae943747108026334dbaa57638a5c2832bcc05ddc477731e14e9`  
		Last Modified: Thu, 02 Jul 2026 05:50:04 GMT  
		Size: 145.9 MB (145886124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:549af95fdc374d94ea65f237ef99015f7078f7ee8cf5b594e63fc9b00593ced7`  
		Last Modified: Thu, 02 Jul 2026 05:50:01 GMT  
		Size: 16.8 MB (16754855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10903378256c91091c5fc02b3abbd96e635c8e21fc22d1a16e36f07b63b98112`  
		Last Modified: Thu, 02 Jul 2026 05:50:00 GMT  
		Size: 4.5 MB (4515214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:1574c35e18594e4b0bcf1092e67445c19e7d8a70a96444265dbde06743075266
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2402360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f948f7fb2ec12468eeab799b53860829dda32413e6b776e17a144a4fdeeb884`

```dockerfile
```

-	Layers:
	-	`sha256:c7e72c6f3b1fa41d0299313757c6d5a14271869210d80448af6ac4f589ba0b4c`  
		Last Modified: Thu, 02 Jul 2026 05:50:00 GMT  
		Size: 2.4 MB (2386597 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:349cdf57dd0660908aecd6b21c44d573226b610f60484f261fcb5d7ab7e4d907`  
		Last Modified: Thu, 02 Jul 2026 05:50:00 GMT  
		Size: 15.8 KB (15763 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:428be7491bc4f3c7fff61959ea6601059b18166457eaa7f168f785b0a4e55886
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.0 MB (193957139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5738beb9b7668968fdcb60ad922e748ddffc0df920e7e7d679f3fe56145c778c`
-	Default Command: `["lein","repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:49:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:49:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:49:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:49:01 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:49:01 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:49:01 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:50:15 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:50:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:50:15 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:50:16 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:50:16 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:3be819c1c8cfde074541a1d875fbf2da3642b0ec6bb39aaa2ce7d56052b67dc1`  
		Last Modified: Wed, 24 Jun 2026 00:28:21 GMT  
		Size: 30.1 MB (30148551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24916a335822c0debfa1cc2d32fee16aed6fbe62eb6d25f96c7a396c57436ba3`  
		Last Modified: Thu, 02 Jul 2026 05:50:38 GMT  
		Size: 142.6 MB (142582208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbc85fd0a4c0a82e4d260be51af754fd0d9ffcb9093e3629ac58056e1ed952a6`  
		Last Modified: Thu, 02 Jul 2026 05:50:35 GMT  
		Size: 16.7 MB (16711151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45b080387a7f291365fc6b4e3887ac9811f680446fecb52416a24b7d3331aa24`  
		Last Modified: Thu, 02 Jul 2026 05:50:35 GMT  
		Size: 4.5 MB (4515197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:bb14c57a33b5de66fd5229546cd2f6dc3f0db83c89a01aeb711cbb8e33099f95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2402710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f66dc014e488c503f47a84af6e49276e517f5bac9b924377d3219f25be67c36`

```dockerfile
```

-	Layers:
	-	`sha256:16f74d3956eda4e81c1139975f3430281f34e7a30b1f5f22e1472b39df20c534`  
		Last Modified: Thu, 02 Jul 2026 05:50:34 GMT  
		Size: 2.4 MB (2386825 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:242d8cadd0fa974bc8ef545b509dfad7ff33afc0b9c11950c9c507f4ee6afaa2`  
		Last Modified: Thu, 02 Jul 2026 05:50:34 GMT  
		Size: 15.9 KB (15885 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:d4b05f67e2cdebbc98a04ae76831c3e40e0176c2eac9e45ae8eb83ca49fde1af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.0 MB (188014080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77313a62829d8ec81d461c09b5f5d276db6bbaeecd81f20acf9fcea219973627`
-	Default Command: `["lein","repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 07:00:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 07:00:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 07:00:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 07:00:10 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 07:00:10 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 07:00:10 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 07:02:36 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 07:02:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 07:02:36 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 07:02:40 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 07:02:40 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:639e1c13483ea279c94219be2736856262d8dd2efeff3e6d309f11a66aba21fb`  
		Last Modified: Wed, 24 Jun 2026 00:30:29 GMT  
		Size: 33.6 MB (33606388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92baef43e33b2e3216fa49fd97c4c72e963f07fed6f47bc27884467e4bf4edbf`  
		Last Modified: Thu, 02 Jul 2026 07:03:12 GMT  
		Size: 133.1 MB (133110143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43c3ea40fedac9f61b6126a46a3f75ac23a6759fd84e2e346f3e9bacd062cd30`  
		Last Modified: Thu, 02 Jul 2026 07:03:09 GMT  
		Size: 16.8 MB (16782320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:596683e76ab5c2f608402beaba19e6ac83b1f4360daeff7cd2616648558c0718`  
		Last Modified: Thu, 02 Jul 2026 07:03:08 GMT  
		Size: 4.5 MB (4515197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:c2d6cffec73ad3b19f9e78e71f5d3358f3a619deeea4fbf5bd0dcd28ce924959
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2402770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f80b0b88f1dffdb105cf0fcf94b0200e4fbc1763b85a14ec85774620be516c0`

```dockerfile
```

-	Layers:
	-	`sha256:c82ae3fc0473c3e08282f5400dfd0795dcda67183cb924319ea43bf646f913e4`  
		Last Modified: Thu, 02 Jul 2026 07:03:08 GMT  
		Size: 2.4 MB (2386962 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8fc9d73ca1f4162e5b9340138197dfe16c7fa6bd930d10dbdb7c36274137755`  
		Last Modified: Thu, 02 Jul 2026 07:03:07 GMT  
		Size: 15.8 KB (15808 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-trixie-slim` - linux; s390x

```console
$ docker pull clojure@sha256:30586982f93d1d4814422de4470fe95aef92bbf06df346635ba10c97b5f4c328
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.8 MB (177797854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfa905fb1c652a5757553791fe48bd726a833bb176553f083aa103366ae4f175`
-	Default Command: `["lein","repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 05:45:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 05:45:43 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 05:45:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 05:45:43 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 02 Jul 2026 05:45:43 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 02 Jul 2026 05:45:44 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 05:46:57 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 02 Jul 2026 05:46:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 02 Jul 2026 05:46:57 GMT
ENV LEIN_ROOT=1
# Thu, 02 Jul 2026 05:46:59 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 02 Jul 2026 05:46:59 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:b6a0af2ceb4b698210b8776157288a3fb06e46aaf75d641139449fcc50ce430d`  
		Last Modified: Wed, 24 Jun 2026 00:28:43 GMT  
		Size: 29.9 MB (29851381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a81cab108ee38c79839eda442189cdb3e25fb41e7a5253b2ecec6483881eacf1`  
		Last Modified: Thu, 02 Jul 2026 05:47:23 GMT  
		Size: 126.7 MB (126651528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5495707d23b1f616605ab1b18f4d2309b0d6b62282964a68ccbba3719cf20a6`  
		Last Modified: Thu, 02 Jul 2026 05:47:21 GMT  
		Size: 16.8 MB (16779706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4676898bca1bbd45a5eeb09d02038ff2dd9f50f3d452eb80100485d26d0ea08`  
		Last Modified: Thu, 02 Jul 2026 05:47:21 GMT  
		Size: 4.5 MB (4515207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4fc236f71b5fffed05e4b19495d3893215261a499c32727aec381680047c1ec2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 MB (2398791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f77b2243e89d3bac5ea6a02ac85cfdc9393d8a334f2ee4fd64baded520997850`

```dockerfile
```

-	Layers:
	-	`sha256:6be438ceda4ed5283ddfbe416abf1939ca10816893f4d3002c2a980e6b436fce`  
		Last Modified: Thu, 02 Jul 2026 05:47:21 GMT  
		Size: 2.4 MB (2383028 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:70900a7a95a0df398efb521c94df5ba9bf0dd40579df6cb7d18f49168baf207d`  
		Last Modified: Thu, 02 Jul 2026 05:47:20 GMT  
		Size: 15.8 KB (15763 bytes)  
		MIME: application/vnd.in-toto+json
