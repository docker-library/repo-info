<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `logstash`

-	[`logstash:8.19.20`](#logstash81920)
-	[`logstash:9.4.5`](#logstash945)
-	[`logstash:9.5.1`](#logstash951)

## `logstash:8.19.20`

```console
$ docker pull logstash@sha256:d94c84fabf2e059318f2ff629f1b967d1a4c8bb7aa44a449bf7f621b554d794c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:8.19.20` - linux; amd64

```console
$ docker pull logstash@sha256:9d631c69bac252c1bdd0f15a459ad76b964949ccf724f4f72a0d864f3a93a7ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **530.8 MB (530754427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ef62aa95627cfe0debbabef0988c21c258fc9c8116898a03b3d4bddba6a5168`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Wed, 12 Aug 2026 17:38:28 GMT
RUN for iter in {1..10}; do       export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&   apt-get upgrade -y &&   apt-get install -y procps findutils tar gzip &&         apt-get install -y locales &&         apt-get install -y curl &&     apt-get clean all &&       locale-gen 'en_US.UTF-8' &&     apt-get clean metadata &&   exit_code=0 && break || exit_code=$? && echo "packaging error: retry $iter in 10s" && apt-get clean all &&   apt-get clean metadata && sleep 10; done; (exit $exit_code) # buildkit
# Wed, 12 Aug 2026 17:38:28 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 logstash &&   useradd --uid 1000 --gid 1000 --home /usr/share/logstash --no-create-home logstash # buildkit
# Wed, 12 Aug 2026 17:39:14 GMT
RUN curl -Lo - https://artifacts.elastic.co/downloads/logstash/logstash-8.19.20-linux-$(arch).tar.gz |   tar zxf - -C /usr/share &&   mv /usr/share/logstash-8.19.20 /usr/share/logstash &&   chown --recursive logstash:logstash /usr/share/logstash/ &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses/ &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Wed, 12 Aug 2026 17:39:14 GMT
WORKDIR /usr/share/logstash
# Wed, 12 Aug 2026 17:39:14 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 12 Aug 2026 17:39:14 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 17:39:14 GMT
COPY config/logstash-full.yml config/logstash.yml # buildkit
# Wed, 12 Aug 2026 17:39:14 GMT
COPY config/pipelines.yml config/log4j2.properties config/log4j2.file.properties config/ # buildkit
# Wed, 12 Aug 2026 17:39:14 GMT
COPY pipeline/default.conf pipeline/logstash.conf # buildkit
# Wed, 12 Aug 2026 17:39:14 GMT
RUN chown --recursive logstash:root config/ pipeline/ # buildkit
# Wed, 12 Aug 2026 17:39:14 GMT
ENV LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
# Wed, 12 Aug 2026 17:39:14 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Wed, 12 Aug 2026 17:39:14 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Wed, 12 Aug 2026 17:39:14 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Wed, 12 Aug 2026 17:39:14 GMT
COPY bin/docker-entrypoint /usr/local/bin/ # buildkit
# Wed, 12 Aug 2026 17:39:14 GMT
RUN chmod 0755 /usr/local/bin/docker-entrypoint # buildkit
# Wed, 12 Aug 2026 17:39:14 GMT
USER 1000
# Wed, 12 Aug 2026 17:39:14 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Wed, 12 Aug 2026 17:39:14 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.opencontainers.image.vendor=Elastic org.label-schema.name=logstash org.opencontainers.image.title=logstash org.label-schema.version=8.19.20 org.opencontainers.image.version=8.19.20 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.license=Elastic License org.opencontainers.image.licenses=Elastic License org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.label-schema.build-date=2026-08-04T18:03:38+00:00 org.opencontainers.image.created=2026-08-04T18:03:38+00:00
# Wed, 12 Aug 2026 17:39:14 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72349d5ba110eb0cd0d65704c8baf75cfc7b7a73ff63c862172e0e5aa6471a0b`  
		Last Modified: Wed, 12 Aug 2026 17:39:50 GMT  
		Size: 49.7 MB (49700613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0a6a13fa3c84bdeaed11cd133e15b88a129ce0045bad6fdd0ef3cb530ade545`  
		Last Modified: Wed, 12 Aug 2026 17:39:48 GMT  
		Size: 1.2 KB (1225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f238178ae04dec67df839f5ed28eebd27c1d911a48e2680daf53ad5a072a1ce`  
		Last Modified: Wed, 12 Aug 2026 17:39:58 GMT  
		Size: 451.0 MB (451034966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0d6eafdf69c82a41e256f7bdf6552e1d67fd8aeec9f61a274ae05751f51177d`  
		Last Modified: Wed, 12 Aug 2026 17:39:48 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6af1cbead8ab2b040e5dac2a4756f49715f110b8d5cdb3b1e5ca25bcf31a2217`  
		Last Modified: Wed, 12 Aug 2026 17:39:49 GMT  
		Size: 1.6 KB (1580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd68e70385d2a20d885149eb71da2929ade0674bf88d48be5bfebdff88df0a16`  
		Last Modified: Wed, 12 Aug 2026 17:39:49 GMT  
		Size: 279.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6aead8a75c4904a40567fca1c3965bec474d7a155a12e31da2bf2d4812cd380`  
		Last Modified: Wed, 12 Aug 2026 17:39:50 GMT  
		Size: 1.8 KB (1765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:707db6637e04fc20a5d7ff87ca266be4cb6d5d4577cea29994e9a29c6835d5dd`  
		Last Modified: Wed, 12 Aug 2026 17:39:51 GMT  
		Size: 6.3 KB (6298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20dfb9dc04ff6a7d819086ad27bd5bad6ee4d4b3bc50f071327d6cd6ca7864a6`  
		Last Modified: Wed, 12 Aug 2026 17:39:52 GMT  
		Size: 255.2 KB (255186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ab8792778fbc5b1e4f680e058b35243bbddaa729df4e744de762818c94861e3`  
		Last Modified: Wed, 12 Aug 2026 17:39:52 GMT  
		Size: 352.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccbcb68ba39c2121271e7c9abae746ede87594aed98feddf5e3a41309d691de1`  
		Last Modified: Wed, 12 Aug 2026 17:39:52 GMT  
		Size: 711.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:8.19.20` - unknown; unknown

```console
$ docker pull logstash@sha256:b7fce733c42e511f5907aa252d856afc41e7c8e972ac2ff9a134a9e4d77ba791
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3645531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf2efd3cef02a64f295a219361e52ccb780e91f605490f044417d75c8d89ee14`

```dockerfile
```

-	Layers:
	-	`sha256:91d50fe986416283613c82bd7e0315b8de1126abab54f38c2486b2409ee9d809`  
		Last Modified: Wed, 12 Aug 2026 17:39:48 GMT  
		Size: 3.6 MB (3609686 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0f80b9b6dc78d0938dac1c08310c89b1fa2d6b5dc4610ef684510f624268d6d5`  
		Last Modified: Wed, 12 Aug 2026 17:39:48 GMT  
		Size: 35.8 KB (35845 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:8.19.20` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:89adb1b56d05e018ce60153931d2a7d9d03b7ce2264fa7c62adc22f224ac5486
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **527.4 MB (527445672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:770426f0ed16df2076f9eb80a097854377c6efc55b33ff6c35c30fdbab71db96`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Wed, 12 Aug 2026 17:37:41 GMT
RUN for iter in {1..10}; do       export DEBIAN_FRONTEND=noninteractive &&     apt-get update -y &&   apt-get upgrade -y &&   apt-get install -y procps findutils tar gzip &&         apt-get install -y locales &&         apt-get install -y curl &&     apt-get clean all &&       locale-gen 'en_US.UTF-8' &&     apt-get clean metadata &&   exit_code=0 && break || exit_code=$? && echo "packaging error: retry $iter in 10s" && apt-get clean all &&   apt-get clean metadata && sleep 10; done; (exit $exit_code) # buildkit
# Wed, 12 Aug 2026 17:37:42 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 logstash &&   useradd --uid 1000 --gid 1000 --home /usr/share/logstash --no-create-home logstash # buildkit
# Wed, 12 Aug 2026 17:38:18 GMT
RUN curl -Lo - https://artifacts.elastic.co/downloads/logstash/logstash-8.19.20-linux-$(arch).tar.gz |   tar zxf - -C /usr/share &&   mv /usr/share/logstash-8.19.20 /usr/share/logstash &&   chown --recursive logstash:logstash /usr/share/logstash/ &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses/ &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Wed, 12 Aug 2026 17:38:19 GMT
WORKDIR /usr/share/logstash
# Wed, 12 Aug 2026 17:38:19 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 12 Aug 2026 17:38:19 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Aug 2026 17:38:19 GMT
COPY config/logstash-full.yml config/logstash.yml # buildkit
# Wed, 12 Aug 2026 17:38:19 GMT
COPY config/pipelines.yml config/log4j2.properties config/log4j2.file.properties config/ # buildkit
# Wed, 12 Aug 2026 17:38:19 GMT
COPY pipeline/default.conf pipeline/logstash.conf # buildkit
# Wed, 12 Aug 2026 17:38:19 GMT
RUN chown --recursive logstash:root config/ pipeline/ # buildkit
# Wed, 12 Aug 2026 17:38:19 GMT
ENV LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
# Wed, 12 Aug 2026 17:38:19 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Wed, 12 Aug 2026 17:38:19 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Wed, 12 Aug 2026 17:38:19 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Wed, 12 Aug 2026 17:38:19 GMT
COPY bin/docker-entrypoint /usr/local/bin/ # buildkit
# Wed, 12 Aug 2026 17:38:19 GMT
RUN chmod 0755 /usr/local/bin/docker-entrypoint # buildkit
# Wed, 12 Aug 2026 17:38:19 GMT
USER 1000
# Wed, 12 Aug 2026 17:38:19 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Wed, 12 Aug 2026 17:38:19 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.opencontainers.image.vendor=Elastic org.label-schema.name=logstash org.opencontainers.image.title=logstash org.label-schema.version=8.19.20 org.opencontainers.image.version=8.19.20 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.license=Elastic License org.opencontainers.image.licenses=Elastic License org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.label-schema.build-date=2026-08-04T18:03:38+00:00 org.opencontainers.image.created=2026-08-04T18:03:38+00:00
# Wed, 12 Aug 2026 17:38:19 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50caaa6097bdf6a2a5a1abfdeae6f1f9544977c9ffc49904b23ba23ef716a45b`  
		Last Modified: Wed, 12 Aug 2026 17:38:59 GMT  
		Size: 49.0 MB (48972535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ffab640057ea70c6c038e0703dc91a6a8b2d143035a01e5d9252d1872da6882`  
		Last Modified: Wed, 12 Aug 2026 17:38:57 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c46592a69ed58ad5db790d42038f60d57213c86976de08fdedf2474e880af4b`  
		Last Modified: Wed, 12 Aug 2026 17:39:07 GMT  
		Size: 449.3 MB (449318583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eff718f789534107a2fc0919704e8c7d50a3bbe267f4dd42566bf32903fbb4ef`  
		Last Modified: Wed, 12 Aug 2026 17:38:57 GMT  
		Size: 278.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:714355398c4d985c64ae2c21b4e35a21acbb6d754403af607a8278c24699df68`  
		Last Modified: Wed, 12 Aug 2026 17:38:59 GMT  
		Size: 1.6 KB (1581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78e8276267b53ef4238ec5d66316157173521369389441d4dbf179d1a56e13cb`  
		Last Modified: Wed, 12 Aug 2026 17:38:59 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f08a4604f27a46a56e5ea647373ba71ad1a382ad28255301d764bec651037258`  
		Last Modified: Wed, 12 Aug 2026 17:39:00 GMT  
		Size: 1.8 KB (1764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d01d74865844bde9e8b7efc56ed556ac45d8919a066274c12d80e90903bb0c6`  
		Last Modified: Wed, 12 Aug 2026 17:39:00 GMT  
		Size: 6.3 KB (6292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee504a11e579eb83a5061e17ba173fdeb565f55434d7cf1947d1547e456fe219`  
		Last Modified: Wed, 12 Aug 2026 17:39:01 GMT  
		Size: 255.2 KB (255185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4699a682e2d8c65b9e1161f1505465cc3e5d0b9033ee21cbd06f40c3c1317485`  
		Last Modified: Wed, 12 Aug 2026 17:39:01 GMT  
		Size: 353.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d3e2b555940df17331ea36a349a6a467a57f36d61ee537da6821c7f9a1e0792`  
		Last Modified: Wed, 12 Aug 2026 17:39:01 GMT  
		Size: 711.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:8.19.20` - unknown; unknown

```console
$ docker pull logstash@sha256:c260edb3729b823da40d8034bb8334adadb0c7ff080f3e48d39379e0774f823c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3646084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e61aa632d6173eae57b54c1ab8638cd9a9160d8630790eb1b4caba397f1ce662`

```dockerfile
```

-	Layers:
	-	`sha256:c0af657045d4643b2b4c63b7faaed0e4ab0ff60e21308c2f0c7b33e041f6d431`  
		Last Modified: Wed, 12 Aug 2026 17:38:58 GMT  
		Size: 3.6 MB (3610111 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a867c95c391221fa43aa1f299fc9a35afa401cd15fce38266803e844f50722ed`  
		Last Modified: Wed, 12 Aug 2026 17:38:57 GMT  
		Size: 36.0 KB (35973 bytes)  
		MIME: application/vnd.in-toto+json

## `logstash:9.4.5`

```console
$ docker pull logstash@sha256:d3159329e72b62c7e3127eb66c616a635944320557f14b6eda31f59da5c5e494
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:9.4.5` - linux; amd64

```console
$ docker pull logstash@sha256:cf9fc545764f290ba793459fffd3de3c7650ad97f640cff7ef521daff53e5c53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **526.5 MB (526516676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47b696756328500576931e5bf4d79c8408a5be25ab7d5a26ee04472eb64b148f`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL io.openshift.expose-services=""
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 17 Aug 2026 17:27:15 GMT
ENV container oci
# Mon, 17 Aug 2026 17:27:16 GMT
COPY dir:975e595a9e6cbbfee7f07eb5443a58fb81eff06cafb12ae4f0e1422e8692c141 in /      
# Mon, 17 Aug 2026 17:27:16 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 17 Aug 2026 17:27:16 GMT
CMD ["/bin/bash"]
# Mon, 17 Aug 2026 17:27:16 GMT
COPY dir:65a3d9e22af3e56e090455b33d2c3174efac94e4f8a1283201a9e46186020641 in /usr/share/buildinfo/      
# Mon, 17 Aug 2026 17:27:16 GMT
COPY dir:65a3d9e22af3e56e090455b33d2c3174efac94e4f8a1283201a9e46186020641 in /root/buildinfo/      
# Mon, 17 Aug 2026 17:27:16 GMT
LABEL "org.opencontainers.image.created"="2026-08-17T17:26:46Z" "org.opencontainers.image.revision"="6bb838e7904a1c68094d157a898fff623ad3fcb9" "build-date"="2026-08-17T17:26:46Z" "architecture"="x86_64" "vcs-ref"="6bb838e7904a1c68094d157a898fff623ad3fcb9" "vcs-type"="git" "release"="1786987521"org.opencontainers.image.created=2026-08-17T17:26:46Z,org.opencontainers.image.revision=6bb838e7904a1c68094d157a898fff623ad3fcb9
# Mon, 17 Aug 2026 22:38:35 GMT
ENV ELASTIC_CONTAINER=true
# Mon, 17 Aug 2026 22:38:35 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 22:38:35 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Mon, 17 Aug 2026 22:38:35 GMT
WORKDIR /usr/share
# Mon, 17 Aug 2026 22:38:38 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Mon, 17 Aug 2026 22:39:36 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.4.5-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.4.5 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Mon, 17 Aug 2026 22:39:36 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Mon, 17 Aug 2026 22:39:36 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Mon, 17 Aug 2026 22:39:36 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Mon, 17 Aug 2026 22:39:36 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Mon, 17 Aug 2026 22:39:36 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Mon, 17 Aug 2026 22:39:36 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Mon, 17 Aug 2026 22:39:36 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Mon, 17 Aug 2026 22:39:37 GMT
WORKDIR /usr/share/logstash
# Mon, 17 Aug 2026 22:39:37 GMT
USER 1000
# Mon, 17 Aug 2026 22:39:37 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Mon, 17 Aug 2026 22:39:37 GMT
LABEL org.label-schema.build-date=2026-08-04T17:59:18+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.4.5 org.opencontainers.image.created=2026-08-04T17:59:18+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.5 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Mon, 17 Aug 2026 22:39:37 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:c282501e7b1aa336a39e8eb09b91d97b94921c378c6a6fbfe7b56d2db572c305`  
		Last Modified: Mon, 17 Aug 2026 18:11:34 GMT  
		Size: 40.7 MB (40711990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d6e799baba3a83045f467308c31f3bf266f3a9b424320c7c558ef8a61d639ca`  
		Last Modified: Mon, 17 Aug 2026 22:40:11 GMT  
		Size: 4.8 MB (4771087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25924bd986ad93f3fe73faeb00e9214fe48651643641477b4ba0ef0ae3451e8f`  
		Last Modified: Mon, 17 Aug 2026 22:40:20 GMT  
		Size: 480.8 MB (480768793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c783f82e96940868639390c3186095c85eb1d1de0fb1e8ec3ed6ce214c4b86d`  
		Last Modified: Mon, 17 Aug 2026 22:40:11 GMT  
		Size: 6.4 KB (6365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dbf5c3e82f5e48a4be27b13446294313cc2dce821e99e3e57cf32f814c5ef82`  
		Last Modified: Mon, 17 Aug 2026 22:40:11 GMT  
		Size: 255.2 KB (255182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5977233a0a91d17a5cedb454940ee3d1910be36b161c11ada639908ca3a37e8`  
		Last Modified: Mon, 17 Aug 2026 22:40:12 GMT  
		Size: 354.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc105ce4c0fd9109541b16deb2701d8f8bc80d8eaa3787e6761cd3de4ed8c0fd`  
		Last Modified: Mon, 17 Aug 2026 22:40:12 GMT  
		Size: 1.6 KB (1577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d59deac1dc709dc1ee36bfe60aef2ed5bb73330f4ae093b93f69af4703e0713`  
		Last Modified: Mon, 17 Aug 2026 22:40:13 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e06b92ed36b912b04b6a6c790dd843def893769d98405423ca1457db3fa9f2e`  
		Last Modified: Mon, 17 Aug 2026 22:40:13 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc4a209398bce026c23d794e9bcc36e1a1017e66e223e31bc6e4a2a837196335`  
		Last Modified: Mon, 17 Aug 2026 22:40:13 GMT  
		Size: 711.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.4.5` - unknown; unknown

```console
$ docker pull logstash@sha256:84513ccb5b902116c161ee977eacca198c17ca6b42987666358f97779924c923
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2145781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7d14f1e6ad1136ebc981a6a17a7a6fee6f2c5145e7bfe7c20854e12e7ae7deb`

```dockerfile
```

-	Layers:
	-	`sha256:3b4a1e5095dfd0a63c15643c45ede88b00dfba3fa0facf7ad2d19c866f97d7cc`  
		Last Modified: Mon, 17 Aug 2026 22:40:11 GMT  
		Size: 2.1 MB (2115581 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:041684a873c087c2253820f972db627d20cf6f383676dd6a560c4c285d481424`  
		Last Modified: Mon, 17 Aug 2026 22:40:11 GMT  
		Size: 30.2 KB (30200 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:9.4.5` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:7d1c2ee67078af7bbe9d266832b2c25b032a7a9c3756b1777d27400a3f7344de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **522.9 MB (522874996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ded4adf847ff4bc34bd49a21f8dfc5f8d73d00ae49dc6cfaf8a463ddbcd8acb8`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL io.openshift.expose-services=""
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 17 Aug 2026 17:29:38 GMT
ENV container oci
# Mon, 17 Aug 2026 17:29:39 GMT
COPY dir:bc0c34c3de4568914cc6d0ce9e475804776b9932a837352e0a0b8eaeec65f0ab in /      
# Mon, 17 Aug 2026 17:29:39 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 17 Aug 2026 17:29:39 GMT
CMD ["/bin/bash"]
# Mon, 17 Aug 2026 17:29:39 GMT
COPY dir:75017821d3d7ffd12376ef094bfe2a63592d7cc455658a85911fc189573e02d7 in /usr/share/buildinfo/      
# Mon, 17 Aug 2026 17:29:39 GMT
COPY dir:75017821d3d7ffd12376ef094bfe2a63592d7cc455658a85911fc189573e02d7 in /root/buildinfo/      
# Mon, 17 Aug 2026 17:29:40 GMT
LABEL "org.opencontainers.image.created"="2026-08-17T17:29:16Z" "org.opencontainers.image.revision"="6bb838e7904a1c68094d157a898fff623ad3fcb9" "build-date"="2026-08-17T17:29:16Z" "architecture"="aarch64" "vcs-ref"="6bb838e7904a1c68094d157a898fff623ad3fcb9" "vcs-type"="git" "release"="1786987521"org.opencontainers.image.created=2026-08-17T17:29:16Z,org.opencontainers.image.revision=6bb838e7904a1c68094d157a898fff623ad3fcb9
# Mon, 17 Aug 2026 22:37:52 GMT
ENV ELASTIC_CONTAINER=true
# Mon, 17 Aug 2026 22:37:52 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 22:37:52 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Mon, 17 Aug 2026 22:37:52 GMT
WORKDIR /usr/share
# Mon, 17 Aug 2026 22:37:55 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Mon, 17 Aug 2026 22:38:43 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.4.5-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.4.5 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Mon, 17 Aug 2026 22:38:44 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Mon, 17 Aug 2026 22:38:44 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Mon, 17 Aug 2026 22:38:44 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Mon, 17 Aug 2026 22:38:44 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Mon, 17 Aug 2026 22:38:44 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Mon, 17 Aug 2026 22:38:44 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Mon, 17 Aug 2026 22:38:44 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Mon, 17 Aug 2026 22:38:44 GMT
WORKDIR /usr/share/logstash
# Mon, 17 Aug 2026 22:38:44 GMT
USER 1000
# Mon, 17 Aug 2026 22:38:44 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Mon, 17 Aug 2026 22:38:44 GMT
LABEL org.label-schema.build-date=2026-08-04T17:59:18+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.4.5 org.opencontainers.image.created=2026-08-04T17:59:18+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.5 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Mon, 17 Aug 2026 22:38:44 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:210b7d6959bf1413d4a100e480de134d4278c3fb9c1808fc5395449f4bd1229f`  
		Last Modified: Mon, 17 Aug 2026 18:17:33 GMT  
		Size: 38.8 MB (38815799 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a21f7ca97430ea1f71379e61d05ccf53040760198c143e5f6731806d5fa6463`  
		Last Modified: Mon, 17 Aug 2026 22:39:23 GMT  
		Size: 4.8 MB (4757670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:795d5d9632ba80902a2309f34fd7f068bdc6739308b8802a075152cd853e498e`  
		Last Modified: Mon, 17 Aug 2026 22:39:33 GMT  
		Size: 479.0 MB (479036731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d298a14b2428da0703d915c3d264d19f59f6d387344e56eaa124ead9c456e9b4`  
		Last Modified: Mon, 17 Aug 2026 22:39:23 GMT  
		Size: 6.4 KB (6363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05bb64c9cdb417b8df04e8351e28b4baf7dbcf4396f1b3969a1f707157dd2272`  
		Last Modified: Mon, 17 Aug 2026 22:39:23 GMT  
		Size: 255.2 KB (255184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddf7cb15cd0a8739fe78866c590c32466e7241dbd2bbf3ce0db060628484be97`  
		Last Modified: Mon, 17 Aug 2026 22:39:24 GMT  
		Size: 350.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:139f86b4f5ea6101a09463ff20eec9d9bccd7c369e14cfec702bd3138f06af11`  
		Last Modified: Mon, 17 Aug 2026 22:39:24 GMT  
		Size: 1.6 KB (1575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af405fd355c5f958933feef0f5da357bfeb78b8cf526568294f36af1251a61c8`  
		Last Modified: Mon, 17 Aug 2026 22:39:24 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dcf51cf8beef899069ce3c03bfd89c5e02964de0113b288fee465ffaecf0347`  
		Last Modified: Mon, 17 Aug 2026 22:39:25 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9a716c221daf22489ce2a0cfb2e3fdf85ffc8ff815b0355ea41a61bc9cf94ae`  
		Last Modified: Mon, 17 Aug 2026 22:39:25 GMT  
		Size: 710.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.4.5` - unknown; unknown

```console
$ docker pull logstash@sha256:63a81a6e617614a3f6f1dc11047659f276533da83f24493238971870a93f36d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 MB (2144646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:647b2e49bbf68dad2f0eacf25f3bde1bab98d03eb71275377569f834b6144f82`

```dockerfile
```

-	Layers:
	-	`sha256:89a3ac0e96a521bc54d2d61bb668e90e6d9ab37a2333df1b87f0dc0841d0e3f6`  
		Last Modified: Mon, 17 Aug 2026 22:39:23 GMT  
		Size: 2.1 MB (2114369 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b60254d750e300ba417170bc894b29c335d52bcc45cdd5b566d82dbfada7701c`  
		Last Modified: Mon, 17 Aug 2026 22:39:23 GMT  
		Size: 30.3 KB (30277 bytes)  
		MIME: application/vnd.in-toto+json

## `logstash:9.5.1`

```console
$ docker pull logstash@sha256:290108309dd7a838c8774929b3bc1afdeaef35fe55bb0ec949e6b6b16af28cb1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `logstash:9.5.1` - linux; amd64

```console
$ docker pull logstash@sha256:0ca9f0e813a87e9ea55cd0acdf5436a10901a63f5d71175a878092a118eeed8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **535.5 MB (535514059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0f6667a0d73c7047993701853c59dbf346ef6c40169275f72d338653551e067`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL io.openshift.expose-services=""
# Mon, 17 Aug 2026 17:27:15 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 17 Aug 2026 17:27:15 GMT
ENV container oci
# Mon, 17 Aug 2026 17:27:16 GMT
COPY dir:975e595a9e6cbbfee7f07eb5443a58fb81eff06cafb12ae4f0e1422e8692c141 in /      
# Mon, 17 Aug 2026 17:27:16 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 17 Aug 2026 17:27:16 GMT
CMD ["/bin/bash"]
# Mon, 17 Aug 2026 17:27:16 GMT
COPY dir:65a3d9e22af3e56e090455b33d2c3174efac94e4f8a1283201a9e46186020641 in /usr/share/buildinfo/      
# Mon, 17 Aug 2026 17:27:16 GMT
COPY dir:65a3d9e22af3e56e090455b33d2c3174efac94e4f8a1283201a9e46186020641 in /root/buildinfo/      
# Mon, 17 Aug 2026 17:27:16 GMT
LABEL "org.opencontainers.image.created"="2026-08-17T17:26:46Z" "org.opencontainers.image.revision"="6bb838e7904a1c68094d157a898fff623ad3fcb9" "build-date"="2026-08-17T17:26:46Z" "architecture"="x86_64" "vcs-ref"="6bb838e7904a1c68094d157a898fff623ad3fcb9" "vcs-type"="git" "release"="1786987521"org.opencontainers.image.created=2026-08-17T17:26:46Z,org.opencontainers.image.revision=6bb838e7904a1c68094d157a898fff623ad3fcb9
# Mon, 17 Aug 2026 22:38:35 GMT
ENV ELASTIC_CONTAINER=true
# Mon, 17 Aug 2026 22:38:35 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 22:38:35 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Mon, 17 Aug 2026 22:38:35 GMT
WORKDIR /usr/share
# Mon, 17 Aug 2026 22:38:38 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Mon, 17 Aug 2026 22:39:37 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.5.1-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.5.1 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Mon, 17 Aug 2026 22:39:37 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Mon, 17 Aug 2026 22:39:37 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Mon, 17 Aug 2026 22:39:37 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Mon, 17 Aug 2026 22:39:37 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Mon, 17 Aug 2026 22:39:37 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Mon, 17 Aug 2026 22:39:37 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Mon, 17 Aug 2026 22:39:37 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Mon, 17 Aug 2026 22:39:37 GMT
WORKDIR /usr/share/logstash
# Mon, 17 Aug 2026 22:39:37 GMT
USER 1000
# Mon, 17 Aug 2026 22:39:37 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Mon, 17 Aug 2026 22:39:37 GMT
LABEL org.label-schema.build-date=2026-08-04T16:26:15+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.5.1 org.opencontainers.image.created=2026-08-04T16:26:15+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.1 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Mon, 17 Aug 2026 22:39:37 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:c282501e7b1aa336a39e8eb09b91d97b94921c378c6a6fbfe7b56d2db572c305`  
		Last Modified: Mon, 17 Aug 2026 18:11:34 GMT  
		Size: 40.7 MB (40711990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:981da7ed7319ee562ba3fcb922bd9768dfe462cc3f0a3ca8e7679f0512ec500e`  
		Last Modified: Mon, 17 Aug 2026 22:40:13 GMT  
		Size: 4.8 MB (4771097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db26931df48cc390f05243c8de4b0a15e7a9ca71f7887a90ee1983698e589e62`  
		Last Modified: Mon, 17 Aug 2026 22:40:21 GMT  
		Size: 489.8 MB (489765988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67b6b73fc1008614327b2a63cabe3c25a2227cbadf294d4ddbbe1ebcf501b071`  
		Last Modified: Mon, 17 Aug 2026 22:40:12 GMT  
		Size: 6.5 KB (6541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cb715043e51c5c8e146c8fdb32b53dc18a2c7492fa8799a58a861d328fb42d9`  
		Last Modified: Mon, 17 Aug 2026 22:40:12 GMT  
		Size: 255.2 KB (255185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7e4a02dfccca479a2741ddc9408a0140fecb8cd477c8fc1073b7d5d1dddb498`  
		Last Modified: Mon, 17 Aug 2026 22:40:13 GMT  
		Size: 354.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a901c045f5721470f1ff5cbe3f0e9f2ba864afa8178d4eac080d259edd7da08`  
		Last Modified: Mon, 17 Aug 2026 22:40:14 GMT  
		Size: 1.6 KB (1576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0439e04fe553cd995cec78fd122b2f7448a32db77a5d43695d5b237771da4e28`  
		Last Modified: Mon, 17 Aug 2026 22:40:14 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53cffc96e338854629f1d82e69a7eabf3e2e6d91de7afec36fb5426107240599`  
		Last Modified: Mon, 17 Aug 2026 22:40:15 GMT  
		Size: 277.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:211f407b0980edb2b8944bfe655344373f0bd9021fa63746726a7a8b2a1d7a94`  
		Last Modified: Mon, 17 Aug 2026 22:40:15 GMT  
		Size: 711.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.5.1` - unknown; unknown

```console
$ docker pull logstash@sha256:ad33a5572755ebe2719d1d5499f5ad948e00d8832df53f3d8d586b2257e81215
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2172008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07df2b250f5f2f7d9b68647f150a21a3782976d052a93ad3afa780c4f6bf5038`

```dockerfile
```

-	Layers:
	-	`sha256:ebb9b063f7c2a97b6cebc887d854235cf2fe659ac652ae722ff4d034fdf5947c`  
		Last Modified: Mon, 17 Aug 2026 22:40:12 GMT  
		Size: 2.1 MB (2141809 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b29dd6d3c5be1cbadc101d919e0deec411254fe74ced764fff5f21e2295ad268`  
		Last Modified: Mon, 17 Aug 2026 22:40:12 GMT  
		Size: 30.2 KB (30199 bytes)  
		MIME: application/vnd.in-toto+json

### `logstash:9.5.1` - linux; arm64 variant v8

```console
$ docker pull logstash@sha256:2b64e5bebea86531154824ccab0f2f09d569014a275186c1a041dd1e5af96551
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **531.9 MB (531870966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bec1b4be7d8604b88cf73ae7c47acc6980c9bca0298dc09420460a7bc1a3d5d3`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL io.openshift.expose-services=""
# Mon, 17 Aug 2026 17:29:38 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 17 Aug 2026 17:29:38 GMT
ENV container oci
# Mon, 17 Aug 2026 17:29:39 GMT
COPY dir:bc0c34c3de4568914cc6d0ce9e475804776b9932a837352e0a0b8eaeec65f0ab in /      
# Mon, 17 Aug 2026 17:29:39 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 17 Aug 2026 17:29:39 GMT
CMD ["/bin/bash"]
# Mon, 17 Aug 2026 17:29:39 GMT
COPY dir:75017821d3d7ffd12376ef094bfe2a63592d7cc455658a85911fc189573e02d7 in /usr/share/buildinfo/      
# Mon, 17 Aug 2026 17:29:39 GMT
COPY dir:75017821d3d7ffd12376ef094bfe2a63592d7cc455658a85911fc189573e02d7 in /root/buildinfo/      
# Mon, 17 Aug 2026 17:29:40 GMT
LABEL "org.opencontainers.image.created"="2026-08-17T17:29:16Z" "org.opencontainers.image.revision"="6bb838e7904a1c68094d157a898fff623ad3fcb9" "build-date"="2026-08-17T17:29:16Z" "architecture"="aarch64" "vcs-ref"="6bb838e7904a1c68094d157a898fff623ad3fcb9" "vcs-type"="git" "release"="1786987521"org.opencontainers.image.created=2026-08-17T17:29:16Z,org.opencontainers.image.revision=6bb838e7904a1c68094d157a898fff623ad3fcb9
# Mon, 17 Aug 2026 22:37:53 GMT
ENV ELASTIC_CONTAINER=true
# Mon, 17 Aug 2026 22:37:53 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 22:37:53 GMT
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
# Mon, 17 Aug 2026 22:37:53 GMT
WORKDIR /usr/share
# Mon, 17 Aug 2026 22:37:56 GMT
RUN microdnf install -y procps findutils tar gzip &&   microdnf install -y openssl &&   microdnf install -y which shadow-utils &&   microdnf clean all # buildkit
# Mon, 17 Aug 2026 22:38:56 GMT
RUN groupadd --gid 1000 logstash &&   adduser --uid 1000 --gid 1000   --home "/usr/share/logstash"   --no-create-home   logstash &&   arch="$(rpm --query --queryformat='%{ARCH}' rpm)" &&   curl --fail --location --output logstash.tar.gz https://artifacts.elastic.co/downloads/logstash/logstash-9.5.1-linux-${arch}.tar.gz &&   tar -zxf logstash.tar.gz -C /usr/share &&   rm logstash.tar.gz &&   mv /usr/share/logstash-9.5.1 /usr/share/logstash &&   chown -R logstash:root /usr/share/logstash &&   chmod -R g=u /usr/share/logstash &&   mkdir /licenses &&   mv /usr/share/logstash/NOTICE.TXT /licenses/NOTICE.TXT &&   mv /usr/share/logstash/LICENSE.txt /licenses/LICENSE.txt &&   find /usr/share/logstash -type d -exec chmod g+s {} \; &&   ln -s /usr/share/logstash /opt/logstash # buildkit
# Mon, 17 Aug 2026 22:38:56 GMT
COPY --chown=logstash:root env2yaml/classes /usr/share/logstash/env2yaml/classes/ # buildkit
# Mon, 17 Aug 2026 22:38:56 GMT
COPY --chown=logstash:root env2yaml/lib /usr/share/logstash/env2yaml/lib/ # buildkit
# Mon, 17 Aug 2026 22:38:56 GMT
COPY --chmod=0755 env2yaml/env2yaml /usr/local/bin/env2yaml # buildkit
# Mon, 17 Aug 2026 22:38:56 GMT
COPY --chown=logstash:root config/pipelines.yml config/log4j2.properties config/log4j2.file.properties /usr/share/logstash/config/ # buildkit
# Mon, 17 Aug 2026 22:38:56 GMT
COPY --chown=logstash:root config/logstash-full.yml /usr/share/logstash/config/logstash.yml # buildkit
# Mon, 17 Aug 2026 22:38:56 GMT
COPY --chown=logstash:root pipeline/default.conf /usr/share/logstash/pipeline/logstash.conf # buildkit
# Mon, 17 Aug 2026 22:38:56 GMT
COPY --chmod=0755 bin/docker-entrypoint /usr/local/bin/ # buildkit
# Mon, 17 Aug 2026 22:38:56 GMT
WORKDIR /usr/share/logstash
# Mon, 17 Aug 2026 22:38:56 GMT
USER 1000
# Mon, 17 Aug 2026 22:38:56 GMT
EXPOSE map[5044/tcp:{} 9600/tcp:{}]
# Mon, 17 Aug 2026 22:38:56 GMT
LABEL org.label-schema.build-date=2026-08-04T16:26:15+00:00 org.label-schema.license=Elastic License org.label-schema.name=logstash org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash org.label-schema.vendor=Elastic org.label-schema.version=9.5.1 org.opencontainers.image.created=2026-08-04T16:26:15+00:00 org.opencontainers.image.description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' org.opencontainers.image.licenses=Elastic License org.opencontainers.image.title=logstash org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.1 description=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' license=Elastic License maintainer=info@elastic.co name=logstash summary=Logstash is a free and open server-side data processing pipeline that ingests data from a multitude of sources, transforms it, and then sends it to your favorite 'stash.' vendor=Elastic
# Mon, 17 Aug 2026 22:38:56 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:210b7d6959bf1413d4a100e480de134d4278c3fb9c1808fc5395449f4bd1229f`  
		Last Modified: Mon, 17 Aug 2026 18:17:33 GMT  
		Size: 38.8 MB (38815799 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e57e683cdd3ff5f4abd2a051daa60387b249d915fbf7a2f347af887ece63ce30`  
		Last Modified: Mon, 17 Aug 2026 22:39:36 GMT  
		Size: 4.8 MB (4757723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79de6bac53c7036ae0356d5416fbec5711076407539676d68990ccac261d3278`  
		Last Modified: Mon, 17 Aug 2026 22:39:44 GMT  
		Size: 488.0 MB (488032470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5471abb25efa5345010b155c55d5f181a08054d5cec509e0b1a2c5c72795c5fe`  
		Last Modified: Mon, 17 Aug 2026 22:39:36 GMT  
		Size: 6.5 KB (6541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03021fa37ecea470f716a5049e5ab4b901d95da7326aa16730e621b1a941946c`  
		Last Modified: Mon, 17 Aug 2026 22:39:36 GMT  
		Size: 255.2 KB (255183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99c28c6b484f42bf7787ee17837ecf911ab62600b16960ca7ceb6cfbc4511202`  
		Last Modified: Mon, 17 Aug 2026 22:39:37 GMT  
		Size: 351.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd3974dc4644297bd8462a08b535783318a0a122f120d8eda7717aba9113cd00`  
		Last Modified: Mon, 17 Aug 2026 22:39:37 GMT  
		Size: 1.6 KB (1573 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c66220b0caecd1cc37568cfbcca06a10614525731c6563294156b4cfd76d244`  
		Last Modified: Mon, 17 Aug 2026 22:39:37 GMT  
		Size: 276.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4fc44a4d1b1f8aefa2fe2717f36603ac317d370b85f62cc89e4de948f02321f`  
		Last Modified: Mon, 17 Aug 2026 22:39:38 GMT  
		Size: 275.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bee7d92deddaa386819ed09052f2dcc01c7ecf4dc4c6cd24c960049ce941b95`  
		Last Modified: Mon, 17 Aug 2026 22:39:38 GMT  
		Size: 711.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `logstash:9.5.1` - unknown; unknown

```console
$ docker pull logstash@sha256:52e83020628cae3a40d5832e2c21097864ec69bcc27959788a15eaa10f1e4a80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2170874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e33cdbd97e481d41eb7fbd52c87118d1b8b7f719676ec75dc166e4df2e1234e`

```dockerfile
```

-	Layers:
	-	`sha256:96ccae824f37b2f79f2a0bde8a4a529b432f97f8269b5eda44fd3778f20c3e5e`  
		Last Modified: Mon, 17 Aug 2026 22:39:36 GMT  
		Size: 2.1 MB (2140597 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:594d5ab79d108c895b4ae23bbf5c2fb25962cbc35325ce484998cfda994be272`  
		Last Modified: Mon, 17 Aug 2026 22:39:36 GMT  
		Size: 30.3 KB (30277 bytes)  
		MIME: application/vnd.in-toto+json
