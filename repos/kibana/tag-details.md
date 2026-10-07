<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kibana`

-	[`kibana:8.19.23`](#kibana81923)
-	[`kibana:9.4.8`](#kibana948)
-	[`kibana:9.5.5`](#kibana955)

## `kibana:8.19.23`

```console
$ docker pull kibana@sha256:0848721d19f6277495ff1ee0b7c46d274dd1e9b644924204375713a81a9823dd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:8.19.23` - linux; amd64

```console
$ docker pull kibana@sha256:14866a12c15358a395895a6bf994099da5d0b034217270a05f5ffc742a181b8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **461.9 MB (461880499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9d3495d6265f55865ad531a5816e002ab2c6cfbedcb0fb89780e9c26cb24d32`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Tue, 06 Oct 2026 21:42:50 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 06 Oct 2026 21:42:50 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get install -y --no-install-recommends fontconfig fonts-liberation libnss3 curl ca-certificates &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 21:51:33 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 06 Oct 2026 21:51:34 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 06 Oct 2026 21:51:34 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 06 Oct 2026 21:51:34 GMT
RUN fc-cache -v # buildkit
# Tue, 06 Oct 2026 21:51:34 GMT
WORKDIR /usr/share/kibana
# Tue, 06 Oct 2026 21:51:34 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 06 Oct 2026 21:51:34 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 06 Oct 2026 21:51:34 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 21:51:34 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 06 Oct 2026 21:51:34 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 21:51:35 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 06 Oct 2026 21:51:36 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 06 Oct 2026 21:51:36 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 06 Oct 2026 21:51:36 GMT
LABEL org.label-schema.build-date=2026-09-30T22:09:35.031Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=bb0fffbaf841ec1d529c098d5d10ff9b43f976ff org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=8.19.23 org.opencontainers.image.created=2026-09-30T22:09:35.031Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=bb0fffbaf841ec1d529c098d5d10ff9b43f976ff org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.23
# Tue, 06 Oct 2026 21:51:36 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 06 Oct 2026 21:51:36 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 06 Oct 2026 21:51:36 GMT
USER 1000
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:594dad02f1ae2f1b9da7e1627972d3175f328eb7e1076d41db5cba36dfe94dbe`  
		Last Modified: Tue, 06 Oct 2026 21:52:39 GMT  
		Size: 11.8 MB (11824554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53b1e84a10d42edc0febe4d979e0660b34d504caf07d9751f1251309b09e151a`  
		Last Modified: Tue, 06 Oct 2026 21:52:46 GMT  
		Size: 403.6 MB (403647520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3b9ff19a17960490e02bd5689b8b9349374984126186ec90cbfa0d50f29a82e`  
		Last Modified: Tue, 06 Oct 2026 21:52:38 GMT  
		Size: 9.5 KB (9529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f6c7aa7bc37981ebe0a26239cb491a4c0abfef41f35f4f945710c9845293d20`  
		Last Modified: Tue, 06 Oct 2026 21:52:39 GMT  
		Size: 16.5 MB (16460487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac54e82dee80888240c24ac09741e242bb25d24db2aeef409ed29aef65f985c`  
		Last Modified: Tue, 06 Oct 2026 21:52:39 GMT  
		Size: 5.2 KB (5242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e237576ae19bb7388ec67ee7c2b949cd74f6be18d37d6ec741fa9b0f79c213d5`  
		Last Modified: Tue, 06 Oct 2026 21:52:40 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e1a9a58ca77fb001f35f37930abff36d733bab8202c7c459b9c310ff93a432f`  
		Last Modified: Tue, 06 Oct 2026 21:52:41 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06ef90cf3595782e5e552083286e4c50307bb15caa797d8eacd58092f7920018`  
		Last Modified: Tue, 06 Oct 2026 21:52:41 GMT  
		Size: 4.8 KB (4820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea4b9e3522b237bb3c5127116bc8ef3bbc1fc8490cabebb59d286271f695a9b9`  
		Last Modified: Tue, 06 Oct 2026 21:52:42 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8fd1f33cc47487fd1cd84cad0247c1429097d7741eb5bcce6ffcf6b593c648b`  
		Last Modified: Tue, 06 Oct 2026 21:52:42 GMT  
		Size: 161.7 KB (161739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1d3751e554fd6a372b40629ff716d098c53fd7d05d6aefc378e3795c10e65ce`  
		Last Modified: Tue, 06 Oct 2026 21:52:42 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:8.19.23` - unknown; unknown

```console
$ docker pull kibana@sha256:0f371a369d9bd63daa26e5c548a36fb3bf21ad85cacd95ab64764ae842e37dc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4925902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:150966d969d3f8f3eecc050c2f26d0d76d98deedd010aafa48f971428caae239`

```dockerfile
```

-	Layers:
	-	`sha256:95329a2f3f9259d16c6523b83f7cb2fd7c9289784a2745fe0fca485a04db23e0`  
		Last Modified: Tue, 06 Oct 2026 21:52:38 GMT  
		Size: 4.9 MB (4884975 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9fdc0ee71699ce0f599aed8e69cc2b1a092648ce408741b6ca63aebb593bb80e`  
		Last Modified: Tue, 06 Oct 2026 21:52:38 GMT  
		Size: 40.9 KB (40927 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:8.19.23` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:88e412e0e14fb2755769abd8e2b22c4f2f9c663df3acd15a9fa80757a9086cbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **474.4 MB (474384649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32bfe519cd8a3a073179f379c8032d9ccf0cf4ada40b80f06931766fd0b9a615`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Tue, 06 Oct 2026 21:42:27 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 06 Oct 2026 21:42:27 GMT
RUN export DEBIAN_FRONTEND=noninteractive &&       apt-get update &&       apt-get install -y --no-install-recommends fontconfig fonts-liberation libnss3 curl ca-certificates &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 21:49:26 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 06 Oct 2026 21:49:26 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 06 Oct 2026 21:49:26 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 06 Oct 2026 21:49:26 GMT
RUN fc-cache -v # buildkit
# Tue, 06 Oct 2026 21:49:26 GMT
WORKDIR /usr/share/kibana
# Tue, 06 Oct 2026 21:49:26 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 06 Oct 2026 21:49:26 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 06 Oct 2026 21:49:26 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 21:49:26 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 06 Oct 2026 21:49:26 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 21:49:27 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 06 Oct 2026 21:49:28 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 06 Oct 2026 21:49:28 GMT
RUN userdel -r ubuntu && groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 06 Oct 2026 21:49:28 GMT
LABEL org.label-schema.build-date=2026-09-30T22:09:35.031Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=bb0fffbaf841ec1d529c098d5d10ff9b43f976ff org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=8.19.23 org.opencontainers.image.created=2026-09-30T22:09:35.031Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=bb0fffbaf841ec1d529c098d5d10ff9b43f976ff org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.19.23
# Tue, 06 Oct 2026 21:49:28 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 06 Oct 2026 21:49:28 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 06 Oct 2026 21:49:28 GMT
USER 1000
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4ad3ff031444faca8aa5fb10cb6ee32025996f54ece6210d7e2347de52c707b`  
		Last Modified: Tue, 06 Oct 2026 21:50:36 GMT  
		Size: 11.7 MB (11701004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0d94f74e7083f2a8d647d039e1d7bc8b02c95abae8642923334f3bdbd1f019f`  
		Last Modified: Tue, 06 Oct 2026 21:50:43 GMT  
		Size: 417.1 MB (417103468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:653f20881f1976eda44dca58c81118686e5c2f350f3cae00d1704fae457b41bb`  
		Last Modified: Tue, 06 Oct 2026 21:50:35 GMT  
		Size: 9.1 KB (9099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e8da12a805322f3fa0783c2d6f90dbd322104ceb62600a979bac650ae2d6032`  
		Last Modified: Tue, 06 Oct 2026 21:50:36 GMT  
		Size: 16.5 MB (16460485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3afe2c75b9e301d308ed8aadda2309a854a645b5c5564bd7f93e765cb8fc01f3`  
		Last Modified: Tue, 06 Oct 2026 21:50:36 GMT  
		Size: 5.2 KB (5244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f27633739b043cd823141c5121daa0f28241238224f8fb230ce9ef1084ebf440`  
		Last Modified: Tue, 06 Oct 2026 21:50:37 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3204c16753d47f7fdc81434752ccb5e85954d16586c87b6e98d5820c22b0bb3`  
		Last Modified: Tue, 06 Oct 2026 21:50:37 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9d02f1a13fc45e03e56c44232b0e2cd30e97abee1a171148107c6d74f8bc4b0`  
		Last Modified: Tue, 06 Oct 2026 21:50:37 GMT  
		Size: 4.8 KB (4823 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2adcfd49f08bb60702c73d755492964a5089af1b8c6bb1e832e55554c704fa5`  
		Last Modified: Tue, 06 Oct 2026 21:50:39 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bc55c25200c871a1f832faded80d00e612cea0e64012ae5aa83aecc91a08379`  
		Last Modified: Tue, 06 Oct 2026 21:50:39 GMT  
		Size: 158.3 KB (158253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:954137a9d4ad16c0d0e8790a3402c4981c663ca2e5212bd6ecee322f85791c2a`  
		Last Modified: Tue, 06 Oct 2026 21:50:39 GMT  
		Size: 1.2 KB (1224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:8.19.23` - unknown; unknown

```console
$ docker pull kibana@sha256:93311e745c4e785ed9f1f59f5ff49084a395537e2f23800a091c2b92f447ff30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4927214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9a99e199e09416a2aff2cc627447ff3401432125dd77df11effaf074e08be8a`

```dockerfile
```

-	Layers:
	-	`sha256:4c3ca259c4655d6b78261e4cd22331a9a8c4dfae0ccf418cf13dfa218e9fc975`  
		Last Modified: Tue, 06 Oct 2026 21:50:35 GMT  
		Size: 4.9 MB (4886039 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e08de90cd117921e6d22539c69c3d0ecf0849c7c25dcda1240fb622edc0a10c2`  
		Last Modified: Tue, 06 Oct 2026 21:50:35 GMT  
		Size: 41.2 KB (41175 bytes)  
		MIME: application/vnd.in-toto+json

## `kibana:9.4.8`

```console
$ docker pull kibana@sha256:b7442ff196be3d1a192a85e86f5e31530c41377bf31fa3cecebea8be92ec3893
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.4.8` - linux; amd64

```console
$ docker pull kibana@sha256:efa6148ebba6d7eef1a83caaced843181ac7957dec8b85be6fd758309c6fc1ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **545.6 MB (545644729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dcaee3da9103ce0aa83ae34e44ace7e8462ce68a7418062b442758a5cb1cff6`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL io.openshift.expose-services=""
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 06 Oct 2026 09:41:08 GMT
ENV container oci
# Tue, 06 Oct 2026 09:41:08 GMT
COPY dir:f50158eee9e07cbf4aceebaec88e4c8773d7166ca83ee42f91072d081a60608e in /      
# Tue, 06 Oct 2026 09:41:08 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 06 Oct 2026 09:41:08 GMT
CMD ["/bin/bash"]
# Tue, 06 Oct 2026 09:41:08 GMT
COPY dir:5310e3bbec09dd41addbb6f81f36a5a94f773036935363707f1d4e803fd1f750 in /usr/share/buildinfo/      
# Tue, 06 Oct 2026 09:41:08 GMT
COPY dir:5310e3bbec09dd41addbb6f81f36a5a94f773036935363707f1d4e803fd1f750 in /root/buildinfo/      
# Tue, 06 Oct 2026 09:41:09 GMT
LABEL "org.opencontainers.image.created"="2026-10-06T09:40:51Z" "org.opencontainers.image.revision"="84687598811e20f52a46b476c889a722893da6fd" "build-date"="2026-10-06T09:40:51Z" "architecture"="x86_64" "vcs-ref"="84687598811e20f52a46b476c889a722893da6fd" "vcs-type"="git" "release"="1791279563"org.opencontainers.image.created=2026-10-06T09:40:51Z,org.opencontainers.image.revision=84687598811e20f52a46b476c889a722893da6fd
# Tue, 06 Oct 2026 23:02:12 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 06 Oct 2026 23:02:12 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Tue, 06 Oct 2026 23:11:36 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 06 Oct 2026 23:11:37 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 06 Oct 2026 23:11:37 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 06 Oct 2026 23:11:37 GMT
RUN fc-cache -v # buildkit
# Tue, 06 Oct 2026 23:11:37 GMT
WORKDIR /usr/share/kibana
# Tue, 06 Oct 2026 23:11:37 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 06 Oct 2026 23:11:37 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 06 Oct 2026 23:11:37 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 23:11:37 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 06 Oct 2026 23:11:37 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 23:11:38 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 06 Oct 2026 23:11:39 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 06 Oct 2026 23:11:39 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 06 Oct 2026 23:11:39 GMT
LABEL org.label-schema.build-date=2026-09-30T20:23:22.801Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=e480f260be8f73cfb3424961a59867631291a2dd org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-09-30T20:23:22.801Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=e480f260be8f73cfb3424961a59867631291a2dd org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8
# Tue, 06 Oct 2026 23:11:39 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.8 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Tue, 06 Oct 2026 23:11:39 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 06 Oct 2026 23:11:39 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 06 Oct 2026 23:11:39 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 06 Oct 2026 23:11:39 GMT
USER 1000
```

-	Layers:
	-	`sha256:5f6aa419d45f217f7bbb8965a7f5de28a0c0124032a4ff1b28141d8f44c4fea7`  
		Last Modified: Tue, 06 Oct 2026 10:25:27 GMT  
		Size: 40.7 MB (40701553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:560aee5275293f8a06218490510f79de250ee7e4dff2b28c887261b623f9ee4e`  
		Last Modified: Tue, 06 Oct 2026 23:12:54 GMT  
		Size: 19.3 MB (19316796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a8c30a9c284aa89f99086b8ac0390a90f99c148842311e35fe5030702492eee`  
		Last Modified: Tue, 06 Oct 2026 23:13:03 GMT  
		Size: 469.1 MB (469067968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a368e441bfee9ab54daa4f5b48a129ff10de12509c8a02e0e542094eeff1a3db`  
		Last Modified: Tue, 06 Oct 2026 23:12:52 GMT  
		Size: 9.5 KB (9524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f743e6b93bbced59a657cdc886f1c2ed32f41122b3cd652945ffcd084306e4b`  
		Last Modified: Tue, 06 Oct 2026 23:12:53 GMT  
		Size: 16.5 MB (16460494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c4405aadec9ebab823c60491cd5092797a55dd07a55902ed5949156dacacb05`  
		Last Modified: Tue, 06 Oct 2026 23:12:53 GMT  
		Size: 5.2 KB (5219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:967750af1e16f2a660a7b196a188c5e8b18c6e223969e41c07a3c3a33adf1d15`  
		Last Modified: Tue, 06 Oct 2026 23:12:55 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3de8d55b93aff0ac597e1df2c6f1b355ca7f9a95e60aa37f48abc357c0c06b3a`  
		Last Modified: Tue, 06 Oct 2026 23:12:55 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8244a53b9719f1d72ed3a95cef4ef500a71bc99226089fae2403f5d344fd2d66`  
		Last Modified: Tue, 06 Oct 2026 23:12:56 GMT  
		Size: 4.9 KB (4924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d83df31e6d7991db689c91e8f4bd093f29347163f2188567f92438773b013a3`  
		Last Modified: Tue, 06 Oct 2026 23:12:56 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74f05db820e465b13a45b9e9c3af4814cb38153612e08e0979fde332c090d46e`  
		Last Modified: Tue, 06 Oct 2026 23:12:56 GMT  
		Size: 74.5 KB (74540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d0f64771318557fe0e10a1821b30c9b8935c2ad561248a2aa93c34b773f7741`  
		Last Modified: Tue, 06 Oct 2026 23:12:57 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cc235ede00b11c8ec318eb3ada1c4208f8971e444154642f722e8f5286258fa`  
		Last Modified: Tue, 06 Oct 2026 23:12:57 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.8` - unknown; unknown

```console
$ docker pull kibana@sha256:7b4a6af18980f567c4748e957dcc22c7eac4d0c3378a7a1c38d34c6206155dd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5920274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19db4673c5a5463c88b9b1f225f1404cf3d2ed97e0fb25f0185f567b572ae3bf`

```dockerfile
```

-	Layers:
	-	`sha256:1b0fbebee0a280e7715c1efc560f0a01c31d9909a3510f9fabc73b48753c66b7`  
		Last Modified: Tue, 06 Oct 2026 23:12:52 GMT  
		Size: 5.9 MB (5877048 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d7a1696074d888d31c40f28dbac719b56a9b2131c7a618c170429591037ac463`  
		Last Modified: Tue, 06 Oct 2026 23:12:52 GMT  
		Size: 43.2 KB (43226 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.4.8` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:a12d960619da2fce6be311c5aa50554598ef1df4cb7e1bb5c7b81035bb2521b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **557.1 MB (557140667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:034711eb4ad0b2c555063368970deaf78509cd8f0b300d70f47f0396b0a23073`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL io.openshift.expose-services=""
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 06 Oct 2026 09:42:21 GMT
ENV container oci
# Tue, 06 Oct 2026 09:42:22 GMT
COPY dir:1d4511abff0d0cabc191309fe39f03480b6374c9bc8873ac0c048d111c3a696b in /      
# Tue, 06 Oct 2026 09:42:22 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 06 Oct 2026 09:42:22 GMT
CMD ["/bin/bash"]
# Tue, 06 Oct 2026 09:42:22 GMT
COPY dir:ed9162b19cefc1e3d222d4f003eb91be76332500a704865cd7734be6ad4d448e in /usr/share/buildinfo/      
# Tue, 06 Oct 2026 09:42:22 GMT
COPY dir:ed9162b19cefc1e3d222d4f003eb91be76332500a704865cd7734be6ad4d448e in /root/buildinfo/      
# Tue, 06 Oct 2026 09:42:22 GMT
LABEL "org.opencontainers.image.created"="2026-10-06T09:42:00Z" "org.opencontainers.image.revision"="84687598811e20f52a46b476c889a722893da6fd" "build-date"="2026-10-06T09:42:00Z" "architecture"="aarch64" "vcs-ref"="84687598811e20f52a46b476c889a722893da6fd" "vcs-type"="git" "release"="1791279563"org.opencontainers.image.created=2026-10-06T09:42:00Z,org.opencontainers.image.revision=84687598811e20f52a46b476c889a722893da6fd
# Tue, 06 Oct 2026 23:01:42 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 06 Oct 2026 23:01:42 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Tue, 06 Oct 2026 23:09:08 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 06 Oct 2026 23:09:09 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 06 Oct 2026 23:09:09 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 06 Oct 2026 23:09:09 GMT
RUN fc-cache -v # buildkit
# Tue, 06 Oct 2026 23:09:09 GMT
WORKDIR /usr/share/kibana
# Tue, 06 Oct 2026 23:09:10 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 06 Oct 2026 23:09:10 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 06 Oct 2026 23:09:10 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 23:09:10 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 06 Oct 2026 23:09:10 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 23:09:11 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 06 Oct 2026 23:09:12 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 06 Oct 2026 23:09:12 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 06 Oct 2026 23:09:12 GMT
LABEL org.label-schema.build-date=2026-09-30T20:23:22.801Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=e480f260be8f73cfb3424961a59867631291a2dd org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.4.8 org.opencontainers.image.created=2026-09-30T20:23:22.801Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=e480f260be8f73cfb3424961a59867631291a2dd org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.4.8
# Tue, 06 Oct 2026 23:09:12 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.4.8 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Tue, 06 Oct 2026 23:09:12 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 06 Oct 2026 23:09:12 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 06 Oct 2026 23:09:12 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 06 Oct 2026 23:09:12 GMT
USER 1000
```

-	Layers:
	-	`sha256:6e3ee034ac700d9806da676936d58b1720e1c6ca90636cbbae190d0a885a71b2`  
		Last Modified: Tue, 06 Oct 2026 10:50:47 GMT  
		Size: 38.8 MB (38805435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ed4579d5b858e3dcf02e6e0f6bfe1e15bb070b5023db1bc97727af76a7b35c6`  
		Last Modified: Tue, 06 Oct 2026 23:10:35 GMT  
		Size: 19.3 MB (19254861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:655c3cd938c9428b5667c00d77fd96a48a6d90dce10ab40671b10a8bdd5b5bba`  
		Last Modified: Tue, 06 Oct 2026 23:10:46 GMT  
		Size: 482.5 MB (482523467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:899449fd8a5ed301dc42d0eef24da16c1fbc028c6761f2e8fe5f52d02be70f6b`  
		Last Modified: Tue, 06 Oct 2026 23:10:33 GMT  
		Size: 9.1 KB (9101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0092de1aef310cd60a69a04f5b16efa0b7b6ebccdda86b6b5e44f7fd384fc4ba`  
		Last Modified: Tue, 06 Oct 2026 23:10:35 GMT  
		Size: 16.5 MB (16460487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f79630268fc6b4a47fa69d1d02d7b95a12f9c405acb7b21b9755dca994cd26dc`  
		Last Modified: Tue, 06 Oct 2026 23:10:35 GMT  
		Size: 5.2 KB (5225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84d26bc485e02d6c449d5e06952542815577321c1f3a23cc355a423669c67938`  
		Last Modified: Tue, 06 Oct 2026 23:10:36 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14b1f65614514078921c6160e040dfb414926c281de3d342f1fbbe03690da843`  
		Last Modified: Tue, 06 Oct 2026 23:10:36 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ff9840d3eceafd9e127e87caab8257a2d0f7d38181429be7303024dad9efa58`  
		Last Modified: Tue, 06 Oct 2026 23:10:36 GMT  
		Size: 4.9 KB (4927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8248616e276ab512a4f2628aa9f80922f1a27245a3822e7ae218e33e11e7619b`  
		Last Modified: Tue, 06 Oct 2026 23:10:37 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f7c68d8b81cd838fb6b8370fc51796a20689c5c6bae88732bdc605acaa97deb`  
		Last Modified: Tue, 06 Oct 2026 23:10:38 GMT  
		Size: 73.5 KB (73453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df9528343d883a061ab76c0bca7cb2e7b980f06cdd33b2c547851de409c3c3ff`  
		Last Modified: Tue, 06 Oct 2026 23:10:38 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ced789e60a09a3b4f41b5e1655a224245dbf21c1e88a300f46fb416f1505278d`  
		Last Modified: Tue, 06 Oct 2026 23:10:39 GMT  
		Size: 1.7 KB (1710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.4.8` - unknown; unknown

```console
$ docker pull kibana@sha256:4ab5e8eee672615ae64381372b27560810d7405c3a5adc006407c2057c04f16a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5917421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b80c0f2d2f87db0b1887aa5a6725e7b7f3155e7b393eae357c765fe05d5377e`

```dockerfile
```

-	Layers:
	-	`sha256:8c7101eb94e64ea6db53c7d59ca7a00b0df8d53d3783ce5d86a43b550111bdd1`  
		Last Modified: Tue, 06 Oct 2026 23:10:34 GMT  
		Size: 5.9 MB (5873938 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9c238a2fbaba87720ce4b841cf2ca85699de3924e3905e8bea925909b98f38fe`  
		Last Modified: Tue, 06 Oct 2026 23:10:33 GMT  
		Size: 43.5 KB (43483 bytes)  
		MIME: application/vnd.in-toto+json

## `kibana:9.5.5`

```console
$ docker pull kibana@sha256:2302bf43b02d7497f54961cdf1308a51d2f00a9c94d4dc30a6cf1540fcc16476
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `kibana:9.5.5` - linux; amd64

```console
$ docker pull kibana@sha256:220d3def2738505e4d0fc13ff3da6922103cfa3fe81bd5bc83f02d85156bc319
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **537.3 MB (537275146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a76ddb3ec3d5aef9767e16b5977093c7ba6269ae918fd29aadf42b084b6e843e`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL io.openshift.expose-services=""
# Tue, 06 Oct 2026 09:41:08 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 06 Oct 2026 09:41:08 GMT
ENV container oci
# Tue, 06 Oct 2026 09:41:08 GMT
COPY dir:f50158eee9e07cbf4aceebaec88e4c8773d7166ca83ee42f91072d081a60608e in /      
# Tue, 06 Oct 2026 09:41:08 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 06 Oct 2026 09:41:08 GMT
CMD ["/bin/bash"]
# Tue, 06 Oct 2026 09:41:08 GMT
COPY dir:5310e3bbec09dd41addbb6f81f36a5a94f773036935363707f1d4e803fd1f750 in /usr/share/buildinfo/      
# Tue, 06 Oct 2026 09:41:08 GMT
COPY dir:5310e3bbec09dd41addbb6f81f36a5a94f773036935363707f1d4e803fd1f750 in /root/buildinfo/      
# Tue, 06 Oct 2026 09:41:09 GMT
LABEL "org.opencontainers.image.created"="2026-10-06T09:40:51Z" "org.opencontainers.image.revision"="84687598811e20f52a46b476c889a722893da6fd" "build-date"="2026-10-06T09:40:51Z" "architecture"="x86_64" "vcs-ref"="84687598811e20f52a46b476c889a722893da6fd" "vcs-type"="git" "release"="1791279563"org.opencontainers.image.created=2026-10-06T09:40:51Z,org.opencontainers.image.revision=84687598811e20f52a46b476c889a722893da6fd
# Tue, 06 Oct 2026 23:02:24 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 06 Oct 2026 23:02:24 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Tue, 06 Oct 2026 23:10:39 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 06 Oct 2026 23:10:40 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 06 Oct 2026 23:10:40 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 06 Oct 2026 23:10:40 GMT
RUN fc-cache -v # buildkit
# Tue, 06 Oct 2026 23:10:40 GMT
WORKDIR /usr/share/kibana
# Tue, 06 Oct 2026 23:10:40 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 06 Oct 2026 23:10:40 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 06 Oct 2026 23:10:40 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 23:10:40 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 06 Oct 2026 23:10:40 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 23:10:41 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 06 Oct 2026 23:10:42 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 06 Oct 2026 23:10:42 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 06 Oct 2026 23:10:42 GMT
LABEL org.label-schema.build-date=2026-09-30T12:22:32.460Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=a2890159e2486503b9e3a0c6f422b153a746651a org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-30T12:22:32.460Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=a2890159e2486503b9e3a0c6f422b153a746651a org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5
# Tue, 06 Oct 2026 23:10:42 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.5.5 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Tue, 06 Oct 2026 23:10:42 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 06 Oct 2026 23:10:42 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 06 Oct 2026 23:10:42 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 06 Oct 2026 23:10:42 GMT
USER 1000
```

-	Layers:
	-	`sha256:5f6aa419d45f217f7bbb8965a7f5de28a0c0124032a4ff1b28141d8f44c4fea7`  
		Last Modified: Tue, 06 Oct 2026 10:25:27 GMT  
		Size: 40.7 MB (40701553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:900e1d06e367f75036c1926c36b4fa2ac4f4c32a753a738d9597dc7266b6e90e`  
		Last Modified: Tue, 06 Oct 2026 23:11:55 GMT  
		Size: 19.3 MB (19316872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1809f5c1e1537e822807535f6c2e80c5ff860765af9487c29d033bd7e9afe5f0`  
		Last Modified: Tue, 06 Oct 2026 23:12:03 GMT  
		Size: 460.7 MB (460698249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:530cc8a70fd64d8c265be69fb30c8e907809040855df316879b614427e716fe7`  
		Last Modified: Tue, 06 Oct 2026 23:11:54 GMT  
		Size: 9.5 KB (9527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0713d46cc9360c217c2954425aa320033151c10e6d4eb5819dcb2a75f8976c5`  
		Last Modified: Tue, 06 Oct 2026 23:11:55 GMT  
		Size: 16.5 MB (16460481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f4214462fe267237dd5d0fc833c2e5a644a96ae4e393b48383df8659fb4826b`  
		Last Modified: Tue, 06 Oct 2026 23:11:55 GMT  
		Size: 5.2 KB (5219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1da8708800e6f0c449c821d7fd34af6c22f14fb95186621e56fedd576c2fc8d3`  
		Last Modified: Tue, 06 Oct 2026 23:11:56 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf25d14a2bf18a992388d7b14f35fede28556d5282a4f30cdc4f8e1c1147cce7`  
		Last Modified: Tue, 06 Oct 2026 23:11:56 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8ebf16346509f3b21fcf37fa9e9b1ab6baacf8a8242486861895aea05fb0a72`  
		Last Modified: Tue, 06 Oct 2026 23:11:56 GMT  
		Size: 5.0 KB (4999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74100771c6060e7eb35ae6931667a5eb5b70740b02a2a937601d04bd34f17b4e`  
		Last Modified: Tue, 06 Oct 2026 23:11:58 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd0333cdc6beeaa02f4c3dcdc9203556aff5af7749e0116e98b4ab7445a9f194`  
		Last Modified: Tue, 06 Oct 2026 23:11:58 GMT  
		Size: 74.5 KB (74544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f74d9cf5b01dcbc8175fef344f44ddf3362f294551e842afd48edffaac906d3d`  
		Last Modified: Tue, 06 Oct 2026 23:11:58 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4c705edc2590a933dfd90fe2f5642831cc98219bd463d4c59cc03f113c59f53`  
		Last Modified: Tue, 06 Oct 2026 23:11:59 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.5.5` - unknown; unknown

```console
$ docker pull kibana@sha256:985f8a841b83c4d493c4bbbca275545058399fa54cfd0bada04ccfb81bc678aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6140339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01436d5f92fd7b859abc00f1d2e110eadd575051c7010a88b7a493198b6f3e78`

```dockerfile
```

-	Layers:
	-	`sha256:1e4911d7cbc7bf1917d4509088c9835b293f29031d7489c880d316ed629a01e8`  
		Last Modified: Tue, 06 Oct 2026 23:11:54 GMT  
		Size: 6.1 MB (6097113 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45974ce6cf38281ca85f02528a2a0f1d93a6b8ddbff784bb14b4e54ddc26fb7c`  
		Last Modified: Tue, 06 Oct 2026 23:11:54 GMT  
		Size: 43.2 KB (43226 bytes)  
		MIME: application/vnd.in-toto+json

### `kibana:9.5.5` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:848b8168438cfeee7d104f117991dbabf43814b9b919320d91284c90bd0ce668
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **548.8 MB (548779177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e50b668feaa906ef09d3968b801ae09e0eb5a04ccdfd336a364e8d43249ef88f`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL io.openshift.expose-services=""
# Tue, 06 Oct 2026 09:42:21 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 06 Oct 2026 09:42:21 GMT
ENV container oci
# Tue, 06 Oct 2026 09:42:22 GMT
COPY dir:1d4511abff0d0cabc191309fe39f03480b6374c9bc8873ac0c048d111c3a696b in /      
# Tue, 06 Oct 2026 09:42:22 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 06 Oct 2026 09:42:22 GMT
CMD ["/bin/bash"]
# Tue, 06 Oct 2026 09:42:22 GMT
COPY dir:ed9162b19cefc1e3d222d4f003eb91be76332500a704865cd7734be6ad4d448e in /usr/share/buildinfo/      
# Tue, 06 Oct 2026 09:42:22 GMT
COPY dir:ed9162b19cefc1e3d222d4f003eb91be76332500a704865cd7734be6ad4d448e in /root/buildinfo/      
# Tue, 06 Oct 2026 09:42:22 GMT
LABEL "org.opencontainers.image.created"="2026-10-06T09:42:00Z" "org.opencontainers.image.revision"="84687598811e20f52a46b476c889a722893da6fd" "build-date"="2026-10-06T09:42:00Z" "architecture"="aarch64" "vcs-ref"="84687598811e20f52a46b476c889a722893da6fd" "vcs-type"="git" "release"="1791279563"org.opencontainers.image.created=2026-10-06T09:42:00Z,org.opencontainers.image.revision=84687598811e20f52a46b476c889a722893da6fd
# Tue, 06 Oct 2026 23:02:29 GMT
EXPOSE map[5601/tcp:{}]
# Tue, 06 Oct 2026 23:02:29 GMT
RUN microdnf install --setopt=tsflags=nodocs -y       fontconfig liberation-fonts-common freetype shadow-utils nss findutils &&       microdnf clean all # buildkit
# Tue, 06 Oct 2026 23:09:19 GMT
COPY --chown=1000:0 /usr/share/kibana /usr/share/kibana # buildkit
# Tue, 06 Oct 2026 23:09:20 GMT
COPY --chown=0:0 /bin/tini /bin/tini # buildkit
# Tue, 06 Oct 2026 23:09:20 GMT
COPY --chown=0:0 /usr/share/fonts/local/NotoSansCJK-Regular.ttc /usr/share/fonts/local/NotoSansCJK-Regular.ttc # buildkit
# Tue, 06 Oct 2026 23:09:20 GMT
RUN fc-cache -v # buildkit
# Tue, 06 Oct 2026 23:09:20 GMT
WORKDIR /usr/share/kibana
# Tue, 06 Oct 2026 23:09:20 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Tue, 06 Oct 2026 23:09:20 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 06 Oct 2026 23:09:20 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 23:09:20 GMT
COPY --chown=1000:0 config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Tue, 06 Oct 2026 23:09:20 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 23:09:21 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Tue, 06 Oct 2026 23:09:22 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Tue, 06 Oct 2026 23:09:22 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Tue, 06 Oct 2026 23:09:22 GMT
LABEL org.label-schema.build-date=2026-09-30T12:22:32.460Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=a2890159e2486503b9e3a0c6f422b153a746651a org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=9.5.5 org.opencontainers.image.created=2026-09-30T12:22:32.460Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=a2890159e2486503b9e3a0c6f422b153a746651a org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=9.5.5
# Tue, 06 Oct 2026 23:09:22 GMT
LABEL name=Kibana maintainer=infra@elastic.co vendor=Elastic version=9.5.5 release=1 summary=Kibana description=Your window into the Elastic Stack.
# Tue, 06 Oct 2026 23:09:22 GMT
RUN mkdir /licenses && ln LICENSE.txt /licenses/LICENSE # buildkit
# Tue, 06 Oct 2026 23:09:22 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Tue, 06 Oct 2026 23:09:22 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Tue, 06 Oct 2026 23:09:22 GMT
USER 1000
```

-	Layers:
	-	`sha256:6e3ee034ac700d9806da676936d58b1720e1c6ca90636cbbae190d0a885a71b2`  
		Last Modified: Tue, 06 Oct 2026 10:50:47 GMT  
		Size: 38.8 MB (38805435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2de52d3beb7ba9cfbe05415d6096da07c0927fde2e4eef15efcfb54c8cdfc80`  
		Last Modified: Tue, 06 Oct 2026 23:10:40 GMT  
		Size: 19.3 MB (19254951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fc4a617c93286b31ebc011f33a9f6d9f3ca641fdf7c4d9ba6936466b1d6c8d9`  
		Last Modified: Tue, 06 Oct 2026 23:10:49 GMT  
		Size: 474.2 MB (474161810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:addd53e5340e0d568df16a1ccad1c32ad0707c1f2ae39af892a9670d0b1b34f8`  
		Last Modified: Tue, 06 Oct 2026 23:10:39 GMT  
		Size: 9.1 KB (9099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c652a32da9896a870772fc531d17bc71ce25b09f8b665016cd51288d56137fb8`  
		Last Modified: Tue, 06 Oct 2026 23:10:40 GMT  
		Size: 16.5 MB (16460493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e01db3aeae6a94ceb8f066c4c877a4702dacc1f80e1d6884a4c31cf31e1bbf5`  
		Last Modified: Tue, 06 Oct 2026 23:10:40 GMT  
		Size: 5.2 KB (5223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:206db58275366dec91cd0ba6db0b5c167c8e0a051235be7ea36f087d5ee8eac8`  
		Last Modified: Tue, 06 Oct 2026 23:10:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c64d49c16de666d401788dcfa26c0a0236fb9f854fff76b216b392d0b150cc1e`  
		Last Modified: Tue, 06 Oct 2026 23:10:42 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab79f7186b6d8c3c20c79a502eb0b1d2e132ad627ef24d0c9ab80968418dc7f8`  
		Last Modified: Tue, 06 Oct 2026 23:10:42 GMT  
		Size: 5.0 KB (5000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53b3b5cba1313cd7af9476d80839f8b577db17b5ea29781535dc6ce7978d565d`  
		Last Modified: Tue, 06 Oct 2026 23:10:43 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23816f8c9cccf2ab3dbc76d310b52e8927a6d6f5a5cca4feb2dda772c1249a7d`  
		Last Modified: Tue, 06 Oct 2026 23:10:43 GMT  
		Size: 73.5 KB (73454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:418a12a7ef56c0b304d05b68b6d308c4f47b81a0d4515d238f3c785890d45a97`  
		Last Modified: Tue, 06 Oct 2026 23:10:43 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de931c8a22fe29ddc4f5d0eb9b471a085bd15b8e8ce592d1358701d2977baacd`  
		Last Modified: Tue, 06 Oct 2026 23:10:44 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `kibana:9.5.5` - unknown; unknown

```console
$ docker pull kibana@sha256:c561717ad92ead51893685250eb2148302b00ffceb305def219653a4aba49fa0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6137486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:beba6c50f32ad276b55cbc24da25d332c99fd107dab27eb7a0646ee2b53c6f35`

```dockerfile
```

-	Layers:
	-	`sha256:c0e16b5be6cb0e0dcdafa9efe2224806d977d0840d7560ec69c0a49230b370dd`  
		Last Modified: Tue, 06 Oct 2026 23:10:39 GMT  
		Size: 6.1 MB (6094003 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:edc359a6959ab10ac74906061abbe04924dff0af2de7329f4ad9026d2dd8fc82`  
		Last Modified: Tue, 06 Oct 2026 23:10:39 GMT  
		Size: 43.5 KB (43483 bytes)  
		MIME: application/vnd.in-toto+json
