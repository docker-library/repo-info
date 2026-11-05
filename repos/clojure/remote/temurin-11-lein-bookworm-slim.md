## `clojure:temurin-11-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:7e6793d25eb431cc4f2170296d26f4eee6fbbadb8c15747280b9f932ba169b85
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-lein-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:a7cd896a45d99649ae7288941e8317e8d598a9fbe78e5bec6950bb6717380bdc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.7 MB (196699963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba4f2cc711ff8185c8b57196725ec569014668771cca1e7703897b3081235cbd`
-	Default Command: `["lein","repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:21:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:21:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:21:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:21:35 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 08:21:35 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 08:21:35 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:22:41 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 08:22:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 08:22:41 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 08:22:42 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 05 Nov 2026 08:22:42 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f421a44f4da1201679a3dd9d44cc76715aa459b82192fb7283ac4b137b429cf`  
		Last Modified: Thu, 05 Nov 2026 08:23:00 GMT  
		Size: 145.9 MB (145864287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f70f01f2c07553a3e6ed2c8c373a440e22761bd485b6b6265634f04b5761d4e4`  
		Last Modified: Thu, 05 Nov 2026 08:22:57 GMT  
		Size: 18.1 MB (18072445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a1067ae97ac967a065eb6c047f8bcda23f49a8361d12094531308bde94c25f5`  
		Last Modified: Thu, 05 Nov 2026 08:22:57 GMT  
		Size: 4.5 MB (4515217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:3767c83ac91ba6677bf37506255f389eae13a99874b203e6ba65f1c281e65759
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2771616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51b4c7144e3d1dfc595b81a98c228423dc61a53093e50722821db9fb1135ef04`

```dockerfile
```

-	Layers:
	-	`sha256:4fdb36f601c90bd5386e640f300f7ecc9954dba9c316e94e26b952ee2c718eda`  
		Last Modified: Thu, 05 Nov 2026 08:22:56 GMT  
		Size: 2.8 MB (2755839 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bdca169aec3746a1229d0c4842b97208cd917a39811af0edb6e10efd713f40d8`  
		Last Modified: Thu, 05 Nov 2026 08:22:56 GMT  
		Size: 15.8 KB (15777 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:660d4214843323c0600e93b34e7cc955c968656b3514deb8a4d26a082baf5d68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.1 MB (193142675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f668cd2e75e0ad627ab18002d25f7d00b8e2cfe200e5953fc1f06edd98d563fb`
-	Default Command: `["lein","repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:16:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:16:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:16:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:16:34 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 08:16:34 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 08:16:34 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:17:45 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 08:17:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 08:17:45 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 08:17:47 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 05 Nov 2026 08:17:47 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87aec21e1b69213f58934bb51527c1a4bed10d5827c198862c5122ac6f319d10`  
		Last Modified: Thu, 05 Nov 2026 08:18:07 GMT  
		Size: 142.6 MB (142576596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cbba2600f2b8e49ac2ec392c1bfafe00adc0dc6b57f8edcb51b02ec7e54059d`  
		Last Modified: Thu, 05 Nov 2026 08:18:05 GMT  
		Size: 17.9 MB (17906482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3c8d0f32c774256f51810398dda77786e37a6f0fcfb8edaf9adbad7164e85fa`  
		Last Modified: Thu, 05 Nov 2026 08:18:04 GMT  
		Size: 4.5 MB (4515207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:46137e6790770ad7e287784ed26d48c1e7733cc8147cf07e6b045c9d0ab3705b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2771971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c0b647337fd3c1b0839fdb3a48dadb1a173fd13bd4db92b270dcd21776a793c`

```dockerfile
```

-	Layers:
	-	`sha256:12232152999b3fab94800cd42157abbe424959090fc385f707c5c304d4c4889d`  
		Last Modified: Thu, 05 Nov 2026 08:18:04 GMT  
		Size: 2.8 MB (2756072 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:190ae3befceb777e4bc872610b3575028389c8d483053d30b3579ee7bfc214d9`  
		Last Modified: Thu, 05 Nov 2026 08:18:03 GMT  
		Size: 15.9 KB (15899 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:431e224d54a478f13261025c61228c6aa74ddd4370610e7721661d6138f0e06e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.0 MB (187983113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2563bb3f89fb206a7b50b85f81b6d52e8884a5f1d19c0fc750ec0a9a7a44653`
-	Default Command: `["lein","repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 15:25:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 15:25:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 15:25:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 15:25:53 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 15:25:53 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 15:25:53 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 15:28:28 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 15:28:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 15:28:28 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 15:28:32 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 05 Nov 2026 15:28:32 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:a3dff645b91d02e56b5f761df11ba1d58ba63ceca28ce0fd26bcdff159295e70`  
		Last Modified: Thu, 05 Nov 2026 06:14:37 GMT  
		Size: 32.1 MB (32093560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9329c87aafadd525522ffaf48d33c9b1ac4757ffed382af5cc137fcdf47489f`  
		Last Modified: Thu, 05 Nov 2026 15:29:14 GMT  
		Size: 133.1 MB (133095080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d3402b132da60fdfc3e7d04c9ab36d369a21a173ce4d56fbc9a7ce9ab5f6341`  
		Last Modified: Thu, 05 Nov 2026 15:29:11 GMT  
		Size: 18.3 MB (18279222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76de51932a4df4f9beda3dda3ad431059ddd5abbb7ec066292206696b8b5c05e`  
		Last Modified: Thu, 05 Nov 2026 15:29:11 GMT  
		Size: 4.5 MB (4515219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:37ff8837fb3d70603998b959a226ca3a33159a817c0dead8ba1122c48a1dce4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2772879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ace5e3e10d05ca8e942f0712875b43901c66329c50d2e79015aa57d160471e4`

```dockerfile
```

-	Layers:
	-	`sha256:d14660abf5d24e9f1f96ef30a237da4a727bdcc1780eff107250e6caaca6e840`  
		Last Modified: Thu, 05 Nov 2026 15:29:10 GMT  
		Size: 2.8 MB (2757057 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e1c2af729106290b10df1974c2e18155b9f4e12f72c040e143d317fb3caf83e3`  
		Last Modified: Thu, 05 Nov 2026 15:29:10 GMT  
		Size: 15.8 KB (15822 bytes)  
		MIME: application/vnd.in-toto+json
