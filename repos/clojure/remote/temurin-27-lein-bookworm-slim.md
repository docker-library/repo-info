## `clojure:temurin-27-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:74ab25245bb2103f25bea90a3c1534c0906ab5b16ab5417dded921d8c54b7ca9
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-lein-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:7f14aaf64e7a34c176d6506668a3207805f2ff4055e7d73ff1bf21fa73d73d97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.5 MB (144458806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:608acdb55fa68e577f4a4f746b7a39aa8e1a09262ffbb67ceb6c77b4586bf1af`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:11:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:11:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:11:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:11:35 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 08:11:35 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 08:11:35 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:12:43 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 08:12:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 08:12:43 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 08:12:45 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 05 Nov 2026 08:12:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:12:45 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:12:45 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:004c930e2de41c1691a32e4c0c6e8e52f86513722cb2459f7e30f67b7ebf14cc`  
		Last Modified: Thu, 05 Nov 2026 08:13:03 GMT  
		Size: 93.6 MB (93622538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1e0a703d82d22d799b43f045d48284ba8f9a350adf18f354ba5b8bc1af05830`  
		Last Modified: Thu, 05 Nov 2026 08:13:01 GMT  
		Size: 18.1 MB (18072636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4f37823759e3981c250b00362b1bc51ab9bf3009a63ce7e47bee31b112bafe0`  
		Last Modified: Thu, 05 Nov 2026 08:13:01 GMT  
		Size: 4.5 MB (4515220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffa1473684838d0df882c3c347f59b424fe20be8f19b9539d0d1214940b407da`  
		Last Modified: Thu, 05 Nov 2026 08:13:00 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:985bd778d4dcc940ebbef307b5fc0e702a95fd518724c665aedf669b73c4165c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2717713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4dc3ec26bd91a427b40526c8ccc293f20ff717286df235acfc8ef1829e70155`

```dockerfile
```

-	Layers:
	-	`sha256:11b91b2ee722944f366d8bce70c7adb8c1d020302757f68b59d149851809ac60`  
		Last Modified: Thu, 05 Nov 2026 08:13:00 GMT  
		Size: 2.7 MB (2699947 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a2c619afdd80f67031cfba369f886c7ea70f223263ac3ce2acaeabfcde2c7dd0`  
		Last Modified: Thu, 05 Nov 2026 08:13:00 GMT  
		Size: 17.8 KB (17766 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:682428abe7ff6eca0f37c0c7624984d3f46e680463ea3217fb92b9bcd688de8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.2 MB (143199611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b984299f5e8379a8f55d8871ccdbf826851a9cd36a98673910a9a08024b6116b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:20:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 08:20:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 08:20:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 08:20:45 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 08:20:45 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 08:20:45 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 08:21:55 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 08:21:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 08:21:55 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 08:21:57 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 05 Nov 2026 08:21:57 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 08:21:57 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 08:21:57 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36a7e4d4609d2357e1e1d40dbca1597abfd9671050dff8be759210d56aef96bb`  
		Last Modified: Thu, 05 Nov 2026 08:22:17 GMT  
		Size: 92.6 MB (92633118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b19b97798f214d9d01e3efc71ad32bf137e07e136bb0e41d37ef4712d9cd2749`  
		Last Modified: Thu, 05 Nov 2026 08:22:15 GMT  
		Size: 17.9 MB (17906491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e02befd02869295f794a4a70c2bb213c3aadb6dd451a2b99d406eb5f9af9eff`  
		Last Modified: Thu, 05 Nov 2026 08:22:14 GMT  
		Size: 4.5 MB (4515213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:560d5c5dfd9d28a41a36c01428f69709f96356b400362fc74a3f42a0550c8313`  
		Last Modified: Thu, 05 Nov 2026 08:22:14 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:84cec4c2069ab93e76d81fe20aa56c3e4beb8f752b1f99e7d6fa6e9311a1127e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2717446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3d66e27ac87c23bb1551f4706659dd79b8e462c58e74258acdf027693e2ee9b`

```dockerfile
```

-	Layers:
	-	`sha256:3b81bfcd511a98de0dad9d1b20dace75de08389e8669e611809386475311a8f3`  
		Last Modified: Thu, 05 Nov 2026 08:22:14 GMT  
		Size: 2.7 MB (2699559 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e47d1f551f5047799a89281598df9d923e00153053a2a37b12fcea056a4358d9`  
		Last Modified: Thu, 05 Nov 2026 08:22:14 GMT  
		Size: 17.9 KB (17887 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:a4ab47a8b4687852d3efe30ef13803515eed096911b772eb7257ffeb3b29a9fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.1 MB (147144460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b1b7c3e8633730b2a6c51cbfac393cede14cec98ac31eab7b7f47e700bade2c`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 16:13:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 16:13:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 16:13:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 16:13:55 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 16:13:55 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 16:13:55 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 16:18:08 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 16:18:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 16:18:08 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 16:18:13 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 05 Nov 2026 16:18:14 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 05 Nov 2026 16:18:14 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 05 Nov 2026 16:18:14 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a3dff645b91d02e56b5f761df11ba1d58ba63ceca28ce0fd26bcdff159295e70`  
		Last Modified: Thu, 05 Nov 2026 06:14:37 GMT  
		Size: 32.1 MB (32093560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77c08afc4ceb0f76e0b0bd43babfba987bfe8fc7500f1cb86595dd3092ee06eb`  
		Last Modified: Thu, 05 Nov 2026 16:18:52 GMT  
		Size: 92.3 MB (92255796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e010e1dedbd19fcff8dd2f086b9ac9e5914081b51af61331e7a74292c97d27d`  
		Last Modified: Thu, 05 Nov 2026 16:18:51 GMT  
		Size: 18.3 MB (18279454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eee644d1f5c9cce908d2713aa26e0b001c58307dbc3e244d20d8880cb5a8b785`  
		Last Modified: Thu, 05 Nov 2026 16:18:50 GMT  
		Size: 4.5 MB (4515219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3818cc6160ce5544a298e4cc5601e60414c17b3f21dafcffbd0f075dbec1d787`  
		Last Modified: Thu, 05 Nov 2026 16:18:50 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:fab25905094f0bace2c8dda9f817156fa8b0427c37e119828eb207110e359df6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2703526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ba2897f770e35c324852b068c318f3bcb1be60e79eb2249a94b12d5d4f3c3d7`

```dockerfile
```

-	Layers:
	-	`sha256:81cf8a5baee0b95e8b3d9267ea124b3b62129102b786d8cbf6dc9b0c893ff6b8`  
		Last Modified: Thu, 05 Nov 2026 16:18:50 GMT  
		Size: 2.7 MB (2685716 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:064d46abdab01e5ceeb2320b1e126cc799ffbd73a0d9d71f34acc715761cebeb`  
		Last Modified: Thu, 05 Nov 2026 16:18:50 GMT  
		Size: 17.8 KB (17810 bytes)  
		MIME: application/vnd.in-toto+json
