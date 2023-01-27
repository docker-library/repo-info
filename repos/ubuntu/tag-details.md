<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ubuntu`

-	[`ubuntu:14.04`](#ubuntu1404)
-	[`ubuntu:16.04`](#ubuntu1604)
-	[`ubuntu:18.04`](#ubuntu1804)
-	[`ubuntu:20.04`](#ubuntu2004)
-	[`ubuntu:22.04`](#ubuntu2204)
-	[`ubuntu:22.10`](#ubuntu2210)
-	[`ubuntu:23.04`](#ubuntu2304)
-	[`ubuntu:bionic`](#ubuntubionic)
-	[`ubuntu:bionic-20221215`](#ubuntubionic-20221215)
-	[`ubuntu:devel`](#ubuntudevel)
-	[`ubuntu:focal`](#ubuntufocal)
-	[`ubuntu:focal-20221130`](#ubuntufocal-20221130)
-	[`ubuntu:jammy`](#ubuntujammy)
-	[`ubuntu:jammy-20221130`](#ubuntujammy-20221130)
-	[`ubuntu:kinetic`](#ubuntukinetic)
-	[`ubuntu:kinetic-20221130`](#ubuntukinetic-20221130)
-	[`ubuntu:latest`](#ubuntulatest)
-	[`ubuntu:lunar`](#ubuntulunar)
-	[`ubuntu:lunar-20221216`](#ubuntulunar-20221216)
-	[`ubuntu:rolling`](#ubunturolling)
-	[`ubuntu:trusty`](#ubuntutrusty)
-	[`ubuntu:trusty-20191217`](#ubuntutrusty-20191217)
-	[`ubuntu:xenial`](#ubuntuxenial)
-	[`ubuntu:xenial-20210804`](#ubuntuxenial-20210804)

## `ubuntu:14.04`

```console
$ docker pull ubuntu@sha256:64483f3496c1373bfd55348e88694d1c4d0c9b660dee6bfef5e12f43b9933b30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 5
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `ubuntu:14.04` - linux; amd64

```console
$ docker pull ubuntu@sha256:881afbae521c910f764f7187dbfbca3cc10c26f8bafa458c76dda009a901c29d
```

-	Docker Version: 19.03.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.8 MB (70764430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13b66b487594a1f2b75396013bc05d29d9f527852d96c5577cc4f187559875d0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 25 Mar 2021 22:33:40 GMT
ADD file:276b5d943a4d284f8a7b249176a31f93d95e852480c2b851de287e53ff622bba in / 
# Thu, 25 Mar 2021 22:33:42 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Mar 2021 22:33:43 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Thu, 25 Mar 2021 22:33:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Mar 2021 22:33:44 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:2e6e20c8e2e69fa5c3fcc310f419975cef5fbeb6f7f2fe1374071141281b6a06`  
		Last Modified: Wed, 18 Dec 2019 13:21:28 GMT  
		Size: 70.7 MB (70691577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0551a797c01db074ab0233ceb567e66b8ebdcb9de9a2e7baa36d57dfbca463a3`  
		Last Modified: Thu, 25 Mar 2021 22:35:39 GMT  
		Size: 72.7 KB (72664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:512123a864da5e2a62949e65b67106292c5c704eff90cac2b949fc8d7ac1e58e`  
		Last Modified: Thu, 25 Mar 2021 22:35:39 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:14.04` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:cc2cb4eb446d23b59b9dc16f69be43420ef690e744bfea1706dabacd6136d1c6
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.7 MB (64700952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5f395c67d441f6c41003473f9ff7bc1bdd2aaac158b3e2ae807587ff9f4c226`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 25 Oct 2022 03:07:46 GMT
ADD file:e9d55e059869915743a8ca8e64582d23c48fe7e90e439daccd56d3e08e8673b4 in / 
# Tue, 25 Oct 2022 03:07:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 25 Oct 2022 03:07:48 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 25 Oct 2022 03:07:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 25 Oct 2022 03:07:49 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:0db3a87a3d7959895fd860c8b924980adda6e77f5d315b6676a4ac0e12518978`  
		Last Modified: Thu, 19 Dec 2019 06:16:01 GMT  
		Size: 64.6 MB (64624015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a31831ce9fd9e38ad9d926286efdb85e400dc823da723d72cc676869c295fb0`  
		Last Modified: Tue, 25 Oct 2022 03:10:28 GMT  
		Size: 76.8 KB (76775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66373b79ee1bedb2a2bf237fb2a717660559ee8e3fec0aae52d9797c2b32b27c`  
		Last Modified: Tue, 25 Oct 2022 03:10:28 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:14.04` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:5ed16aa332467821529d451800e6fe599d83e30471e91b096752f8696d9bf6e9
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.5 MB (66525502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55b7b4f7c5d6a56a3ccb5e93538311838599b65e746a07a0d90cb729e3559df7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 25 Oct 2022 05:55:11 GMT
ADD file:b0eb0db52e323748ea9b8d7f8aecbc523a747619cd08663bab0fe60ab59bc60e in / 
# Tue, 25 Oct 2022 05:55:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 25 Oct 2022 05:55:13 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 25 Oct 2022 05:55:14 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 25 Oct 2022 05:55:14 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:d1a5a1e51f251c3431dec02e2cc8d157e92d1b46913708ce9e600747a6274977`  
		Last Modified: Thu, 19 Dec 2019 03:57:08 GMT  
		Size: 66.5 MB (66466219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f8eea31a63686c11aa74b7df6da0f6450afbee2c9e1e3a6491d422065c6f91`  
		Last Modified: Tue, 25 Oct 2022 05:56:43 GMT  
		Size: 59.1 KB (59096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a72d031efbfb01751d5de3b287566e7d7f33697674a6c4778b7501903cd379ee`  
		Last Modified: Tue, 25 Oct 2022 05:56:43 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:14.04` - linux; 386

```console
$ docker pull ubuntu@sha256:c97d63976268e6c2f3764be91e59f82009b2883d22c3dc6ff1f63e3ad6abdb05
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.4 MB (68445472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8a7710ba73fd21ad01442fe2b079693c60a5b77b18403d56e5da5448e325d06`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 05 Apr 2022 22:39:14 GMT
ADD file:e034601a525da53b0f39bb04d6e2264e2a592d0ae7c21e00697b9b62ca1efec9 in / 
# Tue, 05 Apr 2022 22:39:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Apr 2022 22:39:16 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 05 Apr 2022 22:39:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Apr 2022 22:39:18 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:630712fe5783a35ad52a7026002143cb4f8fe65d34097dcaa4c4331b1b059a17`  
		Last Modified: Thu, 19 Dec 2019 04:44:02 GMT  
		Size: 68.4 MB (68380440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03124bfb4886d9ba012a00a087fb41b4cc7e99517b3e2a2e6fd1e2ad327af191`  
		Last Modified: Tue, 05 Apr 2022 22:40:17 GMT  
		Size: 64.9 KB (64870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22b953ad705784700c1611b7258f6c783a34b06bf27ed3efbd9acc7be80ba991`  
		Last Modified: Tue, 05 Apr 2022 22:40:17 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:14.04` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:209f78eaf05254c51cff7676b913bcb70c1da54e58ae728a592ea58f3b5552b4
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.4 MB (73443164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd23a098588cb567106c63829bf08759e87f4235bbd4c90168e6b065420ac853`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 02 Aug 2022 01:31:42 GMT
ADD file:581665e92c72c8638b40fe509de6479dc1a5d7b5ffe8d6706006178c406e35e2 in / 
# Tue, 02 Aug 2022 01:31:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 02 Aug 2022 01:31:48 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 02 Aug 2022 01:31:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 02 Aug 2022 01:31:50 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:bed4146d918c6c9a57bc3a8bf829e702975b0e53c7f25920fe9435b58ed6b64f`  
		Last Modified: Thu, 19 Dec 2019 04:26:52 GMT  
		Size: 73.4 MB (73379539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:736dbcbc0bcb73948970c71c59c6fc5662698a0cdca10a232da87ede89aabeef`  
		Last Modified: Tue, 02 Aug 2022 01:35:21 GMT  
		Size: 63.4 KB (63436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:376b7bbeb4d42e6e9b75e9ad5bd043790235c8963cac05a03bc5400002ae965b`  
		Last Modified: Tue, 02 Aug 2022 01:35:21 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:16.04`

```console
$ docker pull ubuntu@sha256:1f1a2d56de1d604801a9671f301190704c25d604a416f59e03c04f5c6ffee0d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 6
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ubuntu:16.04` - linux; amd64

```console
$ docker pull ubuntu@sha256:a3785f78ab8547ae2710c89e627783cfa7ee7824d3468cae6835c9f4eae23ff7
```

-	Docker Version: 20.10.7
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.5 MB (46499103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6f50765242581c887ff1acc2511fa2d885c52d8fb3ac8c4bba131fd86567f2e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 31 Aug 2021 01:21:27 GMT
ADD file:11b425d4c08e81a3e0cb2e0345d27cd5fc844dd83f1096af4cc05f635824ff5d in / 
# Tue, 31 Aug 2021 01:21:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 31 Aug 2021 01:21:29 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 31 Aug 2021 01:21:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 31 Aug 2021 01:21:30 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:58690f9b18fca6469a14da4e212c96849469f9b1be6661d2342a4bf01774aa50`  
		Last Modified: Thu, 05 Aug 2021 00:25:05 GMT  
		Size: 46.5 MB (46497548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b51569e7c50720acf6860327847fe342a1afbe148d24c529fb81df105e3eed01`  
		Last Modified: Tue, 31 Aug 2021 01:23:09 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da8ef40b9ecabc2679fe2419957220c0272a965c5cf7e0269fa1aeeb8c56f2e1`  
		Last Modified: Tue, 31 Aug 2021 01:23:08 GMT  
		Size: 528.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb15d46c38dcd1ea0b1990006c3366ecd10c79d374f341687eb2cb23a2c8672e`  
		Last Modified: Tue, 31 Aug 2021 01:23:08 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:16.04` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:5c33df0beb44570500a6b44f64106321ad9b7510eea35120e9180f55164752b7
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 MB (40313794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aed1580c1053e2366cbb798f337c797d18321f661c8c6d9b60b43234245bea10`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 25 Oct 2022 03:07:58 GMT
ADD file:294a94a081de785c730003a440a0530a85add2bcb60c0f5bc4ce7ee17867ac4e in / 
# Tue, 25 Oct 2022 03:08:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 25 Oct 2022 03:08:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 25 Oct 2022 03:08:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 25 Oct 2022 03:08:02 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:b95ba076a26b98e98eac4b43596b59c20d1e61a36bcaf2afae3aeebadc8844cf`  
		Last Modified: Sun, 08 Aug 2021 01:00:22 GMT  
		Size: 40.3 MB (40312250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67de3a011d085fbb829ef04d78536904c6ead23dbc82dd5facff2488d6398672`  
		Last Modified: Tue, 25 Oct 2022 03:10:54 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1202719f1ed95c66ca12784e9dd1983de008b6871eb2cb324c3a3f1a98836af`  
		Last Modified: Tue, 25 Oct 2022 03:10:54 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd1764d93e99e79b6b91814768fa379cc5ce0dce26c71ecfe2f5fc6b3f38212b`  
		Last Modified: Tue, 25 Oct 2022 03:10:55 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:16.04` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:f4c51ba054967fd4b06715f1b67078efbe9ca152e8be98d8f3c1f4d08c6042f8
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41240759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d125c6a1fe22504f84552b7eb11e353e88691875c18caf68847843892b190ccc`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 25 Oct 2022 05:55:17 GMT
ADD file:3c6dc937cb7b4c81b42126f377d23320ec1d0a8ca34d38e7c45871f1d08dac43 in / 
# Tue, 25 Oct 2022 05:55:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 25 Oct 2022 05:55:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 25 Oct 2022 05:55:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 25 Oct 2022 05:55:19 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:828b35a09f0b2f3d1dead43aa2468ff5eba6c463423b3fff7ee6d150f6fd1b6b`  
		Last Modified: Thu, 05 Aug 2021 00:25:09 GMT  
		Size: 41.2 MB (41239253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66927c6d1d3d2e9321c4893f7f2105b7cd23dfb082853d97ec08f188e271e612`  
		Last Modified: Tue, 25 Oct 2022 05:57:02 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:000560be91651dcbf476ebacb8bf1f1339694a3327f8e6da2519e0b29b33eb5d`  
		Last Modified: Tue, 25 Oct 2022 05:57:02 GMT  
		Size: 479.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6225a0253717abdc2ee23ea211c1c439c93b84231ec0a4f1c74762a205ba7234`  
		Last Modified: Tue, 25 Oct 2022 05:57:02 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:16.04` - linux; 386

```console
$ docker pull ubuntu@sha256:bcb8397f1390f4f0757ca06ce184f05c8ce0c7a4b5ff93f9ab029a581192917b
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45817719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:276b5b6b7721e99481801a9aaf21a4d2bf6ba6f6676f720f6f4e0da40a71fb19`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 05 Apr 2022 22:39:28 GMT
ADD file:a4ae521feddf8357667e9361bdd972a69ed945f3857cc8c534652592e432575d in / 
# Tue, 05 Apr 2022 22:39:29 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Apr 2022 22:39:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Apr 2022 22:39:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Apr 2022 22:39:32 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:1335d7ebdbbb7325d434cf945bcb54cb20f7288e1ca2a1cf140ae02b324646e6`  
		Last Modified: Sun, 08 Aug 2021 01:00:22 GMT  
		Size: 45.8 MB (45816182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffa6a227af79fa98ebbd1d2da516e2b7ce1cea5519a760cd0f6688738fbdb951`  
		Last Modified: Tue, 05 Apr 2022 22:40:40 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab3928723c2c34ecd7264ce4e195ddda11403213b1c93d02e8efcd11de4b07a1`  
		Last Modified: Tue, 05 Apr 2022 22:40:40 GMT  
		Size: 514.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e468001dd2f338d54f47d062d65db61c754f09897744d97084afa15cee021200`  
		Last Modified: Tue, 05 Apr 2022 22:40:40 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:16.04` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:4ef33ed6b1af10706727d280de436bced5e9413cba7992d6126c866efd79cacd
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.5 MB (47523643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17fb9d3bc97649795df6522739036df75814819b4b48997a6e05345dcd5e6845`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 02 Aug 2022 01:32:03 GMT
ADD file:c84969ed4d4e336ec5996e26e35261f683b36f1af7a978df587296ef5e7a2627 in / 
# Tue, 02 Aug 2022 01:32:06 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 02 Aug 2022 01:32:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 02 Aug 2022 01:32:08 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 02 Aug 2022 01:32:08 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:5057452c10cfe2216f39949f909f3cd83002d256d1bbd564ae242352a5460fe2`  
		Last Modified: Sun, 08 Aug 2021 01:00:30 GMT  
		Size: 47.5 MB (47522137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bced789eccb5759f541a5b15b9a3031c06cc54bdbff1a553cc0ef29ddad2bc`  
		Last Modified: Tue, 02 Aug 2022 01:36:22 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a11a61259761ffe18601a628413443ccb5dee06a185a81c902220dfc070801c3`  
		Last Modified: Tue, 02 Aug 2022 01:35:56 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3272460dff18ff8fd96d33337b0ff5cc5d9d2e7f158c662273e1bb760c7f9722`  
		Last Modified: Tue, 02 Aug 2022 01:36:06 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:16.04` - linux; s390x

```console
$ docker pull ubuntu@sha256:5fea5a070916f61785140faa8e16fa8bf7ca3f152ceed9c48154f8aca4c3667e
```

-	Docker Version: 20.10.7
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44089219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdb8683432fbdd1ec03145305370c4ec7079b01e22fcc47dd4df1aa862463474`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 31 Aug 2021 01:43:07 GMT
ADD file:8719dec76e2491e6bcc4cba5072d8123bd3472e72108280ea29f6a34761adbeb in / 
# Tue, 31 Aug 2021 01:43:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 31 Aug 2021 01:43:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 31 Aug 2021 01:43:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 31 Aug 2021 01:43:11 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:80d499f9d46bfeec5260ce5a395259ab5e54118e786a0e9023d6550a57730bd4`  
		Last Modified: Tue, 31 Aug 2021 01:45:04 GMT  
		Size: 44.1 MB (44087722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:883d7cfe3e67b3dd7ffd87697a9050dfad287116e1f38ed165b815d7285a7d70`  
		Last Modified: Tue, 31 Aug 2021 01:44:59 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05e68cf162fecf9f82ab0d540cd0f3af1a4a74defc8ba9434379cbae3a09b30c`  
		Last Modified: Tue, 31 Aug 2021 01:44:59 GMT  
		Size: 478.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bfcc45f37d760e154b69274e44e31fd64b8537f3cb1cba39203b537246bc891`  
		Last Modified: Tue, 31 Aug 2021 01:44:59 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:18.04`

```console
$ docker pull ubuntu@sha256:c1d0baf2425ecef88a2f0c3543ec43690dc16cc80d3c4e593bb95e4f45390e45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 6
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ubuntu:18.04` - linux; amd64

```console
$ docker pull ubuntu@sha256:0d32fa8d8671fb6600db45620b40e5189fc02eebb7e29fe8fbb0db49b58becea
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 MB (26711442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e28a50f651f9eefbc8883ddc64704d609f3d95bf1ea9e41f873a8da68ea5ec98`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:48:55 GMT
ADD file:132da97f77ddc534ddb931a461d83ac2aa601dd4481360c874eac33b6c3470d9 in / 
# Mon, 02 Jan 2023 18:48:56 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a055bf07b5b05332897ea9a464c5e76a507fafe72fa21370d3fccaf07d55f360`  
		Last Modified: Thu, 15 Dec 2022 21:00:39 GMT  
		Size: 26.7 MB (26711442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:18.04` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:e982e0db23f2db036b39894a2abd7b672c6a06341a14887aafa52987588ecba2
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.3 MB (22305133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6c458a43b99429991bd6ca2814a3b98d2e1ab53a02c4774d168f6bee3fef4f6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:58:29 GMT
ADD file:dd193bc3de688c6b33fca185c08cbda4626f172cf3238f95dce8457c4ae6134b in / 
# Mon, 02 Jan 2023 18:58:30 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:76fb61f2d39f847056d344250a2953b5a1b082ded5f1cefd7d3afe364723dcdd`  
		Last Modified: Mon, 02 Jan 2023 19:00:09 GMT  
		Size: 22.3 MB (22305133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:18.04` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:72692f365a3ca8ec08354bad7ca6c93f266b0f72e6eeb069025880c0a051ba12
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23735210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a7735c5dff2a2abf1af04bd5e4736ef7b4e711ef4af64a9533fc13b466132b8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:26:21 GMT
ADD file:0acff7d2bb94db4847afdf5ab7b4385732c0a38fd82b0057ce0459f2b5d04042 in / 
# Mon, 02 Jan 2023 18:26:21 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:c347df5277017bf1ab15f258630e012d44bb79c509675d9464f96570668efab0`  
		Last Modified: Mon, 02 Jan 2023 18:27:02 GMT  
		Size: 23.7 MB (23735210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:18.04` - linux; 386

```console
$ docker pull ubuntu@sha256:35b4f89ec2ee42e7e12db3d107fe6a487137650a2af379bbd49165a1494246ea
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27165399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03aca6298f70696be92714f142c4d0573a3283e8d356ce6e5ec94b16ec0bf29c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:00:42 GMT
ADD file:dc76519390168deb6f9bb6052d08c6e7840908a831276d99bb19c6c245f8517b in / 
# Mon, 02 Jan 2023 18:00:43 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:1b284dbae22f155bfee2a25073c97c9758e66aa7129a455cb533d8e2cbc873f9`  
		Last Modified: Mon, 02 Jan 2023 18:01:17 GMT  
		Size: 27.2 MB (27165399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:18.04` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:cd4c7bc91a90a250921bdbae639da775d6edf8931275fd4af70a773ffe214b6f
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30442485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fcce684d6105c0224f1e459fea221dd4cbeaeaa5913d2ec3cde6bea8c964b81`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 19:01:19 GMT
ADD file:0bfaa9e69327bfd3f89d58fa598804b1e047724a7fa74ce6b8b79d10a39622d5 in / 
# Mon, 02 Jan 2023 19:01:21 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:b0461f07ee3325b91e2abe6d0903319c9b81e89e23b6991a65302059fa916485`  
		Last Modified: Mon, 02 Jan 2023 19:02:55 GMT  
		Size: 30.4 MB (30442485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:18.04` - linux; s390x

```console
$ docker pull ubuntu@sha256:2e66094d069cacf11ed438c5d1c9908f71afe68d66f104434d9e21c491d7d769
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.4 MB (25371161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:075428cb254ebdcea227666a93270d1ddf8dfeaf2004029655d6c49eccc45145`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:43:32 GMT
ADD file:735e44144d502635bb4630f743d35453afe550177166dec1f1f6f698c04d4a07 in / 
# Mon, 02 Jan 2023 18:43:35 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:22dceda0ac2bcb2588338678999c8d219d3822e36f9e1f3c16e9cd33703c859b`  
		Last Modified: Mon, 02 Jan 2023 18:45:16 GMT  
		Size: 25.4 MB (25371161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:20.04`

```console
$ docker pull ubuntu@sha256:0e0402cd13f68137edb0266e1d2c682f217814420f2d43d300ed8f65479b14fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 6
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; riscv64
	-	linux; s390x

### `ubuntu:20.04` - linux; amd64

```console
$ docker pull ubuntu@sha256:8eb87f3d6c9f2feee114ff0eff93ea9dfd20b294df0a0353bd6a4abf403336fe
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.6 MB (28576882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5447fc01ae62c20beffbfa50bc51b2797f9d7ebae031b8c2245b5be8ff1c75b`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:20:21 GMT
ADD file:9d282119af0c42bc823c95b4192a3350cf2cad670622017356dd2e637762e425 in / 
# Fri, 09 Dec 2022 01:20:21 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:846c0b181fff0c667d9444f8378e8fcfa13116da8d308bf21673f7e4bea8d580`  
		Last Modified: Thu, 08 Dec 2022 13:18:11 GMT  
		Size: 28.6 MB (28576882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:20.04` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:5b9a4fec6095506e014f82a87fd101b66617389862e45c19158227fd339b7b8a
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.6 MB (24589003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fb5ac8108a9398fe94366894d521cbc966a087f1ab64bdfe5d191570147e45b`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:36:16 GMT
ADD file:b21aa237ba47147762a1b92947251163795189df45212a32e07ea3438a186e03 in / 
# Fri, 09 Dec 2022 01:36:17 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cfbc8b467b3eb89e7c394402566b2965c83f3103dafb141203e0020a8acd3774`  
		Last Modified: Fri, 09 Dec 2022 01:38:40 GMT  
		Size: 24.6 MB (24589003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:20.04` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:bfd9523988a26a8913fbced7d00b00805572d093c4d8cbc64252b45e032302d5
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27193168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43ed104e759f96978d95473568dbaef829695dbade5c10be56f344948ab0caa1`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:46:50 GMT
ADD file:8cba976cb6ea226de769a768ee274e7679d34f923c93392f340680dc6696232e in / 
# Fri, 09 Dec 2022 01:46:50 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f04b4bbe15805316c8fda79beedd3b77e6b1ffcd0acf81226c3089e63f6bffeb`  
		Last Modified: Thu, 08 Dec 2022 15:28:02 GMT  
		Size: 27.2 MB (27193168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:20.04` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:2d26e9521293ef4447ea8fbf8d327d503b5fdb9ae663a1653f16459576de0c6f
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.3 MB (33299473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e64751ae691c7f5e859dce9ad29635ba09f55f597b5ea437a913cd621bd193c`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:27:36 GMT
ADD file:ca32a106475146fa5bd0f3e4920ea64671b1054f57a1f33d4681fe170deda313 in / 
# Fri, 09 Dec 2022 01:27:37 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d198f08d15a240101119086908bf4c5035dc657d52bfe206ddeede273c6b84f3`  
		Last Modified: Fri, 09 Dec 2022 01:30:09 GMT  
		Size: 33.3 MB (33299473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:20.04` - linux; riscv64

```console
$ docker pull ubuntu@sha256:c0e96f609e5f128bdb6d24d21d3bf0a9af6f17234976fa574dad7146a0f97fb2
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.2 MB (24245212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fd2ff3eb6191a7eeebc6ff2a4f23d0124d7ec1544dfbd3cd89f2eaf05d9b32f`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:10:28 GMT
ADD file:50c1d21a50d57d99470bd427f2ee427504ad0602a5046dbc6a04680574d27f39 in / 
# Fri, 09 Dec 2022 01:10:29 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:1bf57572b326faac5012873a6b3ea48eee0fe2649c47d425e34e149459c96c29`  
		Last Modified: Fri, 09 Dec 2022 01:32:24 GMT  
		Size: 24.2 MB (24245212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:20.04` - linux; s390x

```console
$ docker pull ubuntu@sha256:7d78b9f8531a8d71bcf74cd217308ae0a41aa1f30f8f29e8552ae61178faccf0
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.0 MB (27016083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae0954099a5854523e740afc318eb515a87665a1cba92c65b8433d712d761845`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:52:40 GMT
ADD file:3d26982d2188d52ed2423587d3d2597c1f8ff614c19408d892cadc91d3743deb in / 
# Fri, 09 Dec 2022 01:52:43 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:5d330d9ae4f68425a719ebb93a3911994ee56b1328cf256fc3c44a4050de22ec`  
		Last Modified: Fri, 09 Dec 2022 01:54:57 GMT  
		Size: 27.0 MB (27016083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:22.04`

```console
$ docker pull ubuntu@sha256:27cb6e6ccef575a4698b66f5de06c7ecd61589132d5a91d098f7f3f9285415a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 6
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; riscv64
	-	linux; s390x

### `ubuntu:22.04` - linux; amd64

```console
$ docker pull ubuntu@sha256:965fbcae990b0467ed5657caceaec165018ef44a4d2d46c7cdea80a9dff0d1ea
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30428708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b7dfa7e8fdbe18ad425dd965a1049d984f31cf0ad57fa6d5377cca355e65f03`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:20:30 GMT
ADD file:481dd2da6de71525248eba186feeeafcc73cc956ade0a196a4e8b0c2424e74b9 in / 
# Fri, 09 Dec 2022 01:20:31 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6e3729cf69e0ce2de9e779575a1fec8b7fb5efdfa822829290ab6d5d1bc3e797`  
		Last Modified: Thu, 08 Dec 2022 14:10:00 GMT  
		Size: 30.4 MB (30428708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:22.04` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:ea8f467d512068a1e52494d5b2d959a9307a35682633d0b5d481e79c914c627f
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.0 MB (27023448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:591e4910d0b5364272463c57b86a8524eaee6b4bd3bb14f70979186281074374`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:36:30 GMT
ADD file:ca82b3c78a23b75345429f192c4b1f88b4e49e12808c85fccc2db04823c17d4e in / 
# Fri, 09 Dec 2022 01:36:30 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:c38006c9acc492149d706593acba951110798e57a7ad05103ae7a2d5969c14b6`  
		Last Modified: Thu, 08 Dec 2022 18:49:27 GMT  
		Size: 27.0 MB (27023448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:22.04` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:e77aa65a8a2bccbc47b96b4256995dd7ff447024ed5319527040f7cc465f6511
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28384475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c2c87c6c36efcba52fe55e88b05af548de25e295d2ebddf10dacbf605ac78b7`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:46:57 GMT
ADD file:429a55a11d4bcd15647d1316d9debd9ead4b4ab5c0b9146894d07c39aa814290 in / 
# Fri, 09 Dec 2022 01:46:57 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:10175de2f0c4f7d306f660ee073bce12b824c8012dd19b3c140aae053fabd1cc`  
		Last Modified: Thu, 08 Dec 2022 18:50:01 GMT  
		Size: 28.4 MB (28384475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:22.04` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:48d0b40359f8789f1c5d6065bf0d2a00c8d0d4913ac61670215b2debedd483e6
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.7 MB (35708154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c1fccf2a735e9fccfbca179861ea3236c30c085f334bf94077c1d2c9fc91912`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:27:53 GMT
ADD file:1a2557b357a1dca8521ee846ec16c9b2bd8a53839b9d4fda21a28f9ceeecb4b7 in / 
# Fri, 09 Dec 2022 01:27:55 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:ce75b47e476cd75b30dca46558ac79b39923aa94d7e4b0cc025e521404cdbab0`  
		Last Modified: Fri, 09 Dec 2022 01:30:32 GMT  
		Size: 35.7 MB (35708154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:22.04` - linux; riscv64

```console
$ docker pull ubuntu@sha256:f31546bc71659c643837d57f09a161f04e866b59da4f418e064082a756c4c23a
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27749556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b55084b9c02c8c6d013ed4b10f3e0c9306a50be9526ee8bf5870c8175554a72`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:12:29 GMT
ADD file:f46f460af5409f8fff839ed52d7332dff314cffbb59ee3f40e898ecb6bfa21f9 in / 
# Fri, 09 Dec 2022 01:12:30 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7548465e3aa5fee0518ca5aefe07a54411b419ec670a320e18c9b8892b0afc0f`  
		Last Modified: Fri, 09 Dec 2022 01:34:47 GMT  
		Size: 27.7 MB (27749556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:22.04` - linux; s390x

```console
$ docker pull ubuntu@sha256:4e3c33035b808801fc84ba48d5a779cd572167956f5123d846d7e1cbafe9e785
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.6 MB (28642146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85bdd095c778fa5e7dc7f04556d5e902c5e7a51e0e9f0dc794587d01c7e9f4ff`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:52:57 GMT
ADD file:aa22431536efed6cf05ad353979a4d4d5557c975e4333985e7b89b125f013ade in / 
# Fri, 09 Dec 2022 01:53:00 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:5125256a405e8f68b6edcff30c8e2e9761127daf8628a48134c73f8f45ce631f`  
		Last Modified: Fri, 09 Dec 2022 01:55:10 GMT  
		Size: 28.6 MB (28642146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:22.10`

```console
$ docker pull ubuntu@sha256:de3394e00e0e7e0d5f2092ae05a4c652f9918e67efa617565df2a1ed5353bbfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 6
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; riscv64
	-	linux; s390x

### `ubuntu:22.10` - linux; amd64

```console
$ docker pull ubuntu@sha256:ee0752679bed0fa6c877f24dc19a94abb62d3d212197431f4d92638a1613ff17
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.5 MB (27478988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6547859cd2f8a9d8f1730ea25a2d5943fb8c8149be724229ce9078af13fcd79`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:20:40 GMT
ADD file:6c9f486c9412e2a47f196c5d3be4ea6041dc5eb579b1f1c35ae6dd8e7e3bfc64 in / 
# Fri, 09 Dec 2022 01:20:40 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3f701d9643d37eca8cb445ba978c767bc1e07bf958e94504db0298999bfe58c1`  
		Last Modified: Fri, 09 Dec 2022 01:22:08 GMT  
		Size: 27.5 MB (27478988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:22.10` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:9b87317e5b0e1c0e30677e705e26926742c437701919af9b42a3f521b17e1b7e
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.9 MB (25892971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45a782654444cc7c6ef7d6679bf74d9c8c2868ee3dfeefec606b3cee48dde727`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:36:45 GMT
ADD file:d233b1e175c6c664c61d6b9655e68f70321ed1d18717f4709aede57ca633959d in / 
# Fri, 09 Dec 2022 01:36:45 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:32d980e58054da2da0ffd3e115907a93757913f5c431a52b4427379d3737ee4b`  
		Last Modified: Fri, 09 Dec 2022 01:39:17 GMT  
		Size: 25.9 MB (25892971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:22.10` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:2042487aa17efb24674019bc4395b8dd1d2865e295a449542474adc072b177e7
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 MB (26700267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4efd9f596e004d75c444ffb9d89145965e05b1659617324396a63868cfb5c32`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:47:04 GMT
ADD file:bfc30ac3a38dd1f76f8a80aa5a10bd3abdcddba8c233e54a84935dc8959da97c in / 
# Fri, 09 Dec 2022 01:47:04 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:e9ac92330003b70c7feb4ea962cd0bd70aedbb2a72b3544cc3d9fb3a78447fa3`  
		Last Modified: Fri, 09 Dec 2022 01:48:26 GMT  
		Size: 26.7 MB (26700267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:22.10` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:a3f4126e6e07018ae3be3cec5535417a885b968b45ae602b8d1d79e06704cf58
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32109595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d7ff9bcef9bffb44ee5dca265510529c871398f4268042d03bfb7972968bc22`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:28:11 GMT
ADD file:ff6e70600cb0ebcb9aa6617d8d8c160771f450ae3c28b4d56ee84f3b7b749fb2 in / 
# Fri, 09 Dec 2022 01:28:13 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8b9fbf12c270bd8e683dce41eb3b54e64a8658d36272e8728b81587156971e16`  
		Last Modified: Fri, 09 Dec 2022 01:30:58 GMT  
		Size: 32.1 MB (32109595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:22.10` - linux; riscv64

```console
$ docker pull ubuntu@sha256:d708589f4214d8612f0fdf9ba3e8488e16f9a665f7fd9e0ba24edcdfc326f0f7
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.6 MB (25640259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4819792eac8ee5fc12e4dd0eb179280d6e3dcae69b77905d52a750f15b2cd6e2`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:14:46 GMT
ADD file:7e2bfb25c400fe48fedbb3adb245a3bc6b40ec07dae2feeb339c704b967ce658 in / 
# Fri, 09 Dec 2022 01:14:48 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:080423a9398e3d16c0feb2851e7596ddc2d8d33fdfb3bf0b4a881619b9b86c9f`  
		Last Modified: Fri, 09 Dec 2022 01:37:40 GMT  
		Size: 25.6 MB (25640259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:22.10` - linux; s390x

```console
$ docker pull ubuntu@sha256:37b590aae211a73aa668db4b4f7dc13c16d6cd19c3a37d4cf5ff17d45a187c8b
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.0 MB (26029416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a63a77a500fa89ed0e551524eb9afeaa278fce9e6c95a92a13b1b9bd9499e6e`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:53:16 GMT
ADD file:3664024c53edd795e8d3cdd91bc26651c0962e85200bdf8a9b23c7103aad3433 in / 
# Fri, 09 Dec 2022 01:53:19 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a9f1ddfd3fe3bd668f8c96ba98090ed119f7f65f39d79a995ac0c7bf56187808`  
		Last Modified: Fri, 09 Dec 2022 01:55:24 GMT  
		Size: 26.0 MB (26029416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:23.04`

```console
$ docker pull ubuntu@sha256:2ca8fe42bcc2979f66dd80c2987a43cfc5502626094b7f838f89759173f3956b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 6
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; riscv64
	-	linux; s390x

### `ubuntu:23.04` - linux; amd64

```console
$ docker pull ubuntu@sha256:a40051efc6b591d38faffb11fdcef157103b9a4143edbc959c47e4b8c7d2e9eb
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.5 MB (27527968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab765816b3974729f0fde5886d9639590664cc371496b7e3c2e6e15edcef4896`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:49:08 GMT
ADD file:454acefef6c46f4d8ea05f6cafa0de83698e9def83069c3dceab15df524ccb8e in / 
# Mon, 02 Jan 2023 18:49:08 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:2627e5235478b0c8c569e6c5ff9e9e4e61fe03be2808f2324531fc5e73496661`  
		Last Modified: Mon, 02 Jan 2023 18:49:58 GMT  
		Size: 27.5 MB (27527968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:23.04` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:a19c44ed33a0b9e83f3a38d546e0edbedecf9115ea1181c7f340f658d9f84e08
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.0 MB (26044672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dba2327ac07100563c451de6b4fbdb52d385fadf8941625eae6cb5e9f4eb5b04`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:58:50 GMT
ADD file:d5b7f8b874ee985d200663cd6bd4fe0dc5622c54f883004e0b84f92a74543601 in / 
# Mon, 02 Jan 2023 18:58:50 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:9538a59414233f23f1325d2dbad0378997afd754348ad4f3e9ebbdb32bc48f9d`  
		Last Modified: Mon, 02 Jan 2023 19:00:37 GMT  
		Size: 26.0 MB (26044672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:23.04` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:c00affe19c594b8239661a7e68154932411690bde2a2345f6ca4f4d43970cd6c
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 MB (26855540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3497342a2081b8075868281584fb6f0e3846c3c38c9e497b86a7cfa58c9cc6bb`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:26:30 GMT
ADD file:87f1515364340e1c65eb76041a8285f4f511485c46275949dfcff1961d556236 in / 
# Mon, 02 Jan 2023 18:26:31 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:03a7a9a433574ecc00c891140ebadd82c8592d8f29b7d5808b6bb9a0234684b5`  
		Last Modified: Mon, 02 Jan 2023 18:27:21 GMT  
		Size: 26.9 MB (26855540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:23.04` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:5dd623ca0547cc75302ee587122f469f92a066318914470f89fd03da32e3a03f
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32137445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41320a633d63c8e0ed6e649cb0f006ca301bc98cf4ae6b4bed31d2fd64b4f5e9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 19:01:43 GMT
ADD file:ea9743ea4cbf9deea0e3f8207b93c49151ad75ab037c042a1a4e0ef4f00c4779 in / 
# Mon, 02 Jan 2023 19:01:44 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:2f3462978627dacc0661848613bd622e57c1cfabc7c39dc5dacfd0053442bfd6`  
		Last Modified: Mon, 02 Jan 2023 19:03:25 GMT  
		Size: 32.1 MB (32137445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:23.04` - linux; riscv64

```console
$ docker pull ubuntu@sha256:d19ba26eb53b3b5d6553756a420cbd4b15b5cea0b53af9899f2ada01174745ee
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.7 MB (25669058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05fdb55215bb484783ea45c3ba874a9b8886993abb3cb25be7d6ae2bd128b126`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:09:01 GMT
ADD file:512505c2df26db88aeeb5025ff073a2d8e98d995422df61a5cad94d79ef22a42 in / 
# Mon, 02 Jan 2023 18:09:02 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:ada5e428c090bd736690979612e7bece7c31ff1f1701ca35de4d1899e835e69a`  
		Last Modified: Mon, 02 Jan 2023 18:09:56 GMT  
		Size: 25.7 MB (25669058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:23.04` - linux; s390x

```console
$ docker pull ubuntu@sha256:0656d5a63055e8953396bab2a4298334b29c5aca24eecb3b60a05a4ecc55feb5
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.1 MB (26058061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b0764f6e380c446c57c0abb303da0485b7713ecc5be8dbad8df75c1a9408ade`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:44:10 GMT
ADD file:00e905457e813e8aae003e51281910821c1d21806ac2f91869f665b31dc42d25 in / 
# Mon, 02 Jan 2023 18:44:13 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:45f3c7fc242d16c16595c5060c9b387bf176629597ffecfa997c8eb4491aa9cf`  
		Last Modified: Mon, 02 Jan 2023 18:45:38 GMT  
		Size: 26.1 MB (26058061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:bionic`

```console
$ docker pull ubuntu@sha256:c1d0baf2425ecef88a2f0c3543ec43690dc16cc80d3c4e593bb95e4f45390e45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 6
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ubuntu:bionic` - linux; amd64

```console
$ docker pull ubuntu@sha256:0d32fa8d8671fb6600db45620b40e5189fc02eebb7e29fe8fbb0db49b58becea
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 MB (26711442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e28a50f651f9eefbc8883ddc64704d609f3d95bf1ea9e41f873a8da68ea5ec98`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:48:55 GMT
ADD file:132da97f77ddc534ddb931a461d83ac2aa601dd4481360c874eac33b6c3470d9 in / 
# Mon, 02 Jan 2023 18:48:56 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a055bf07b5b05332897ea9a464c5e76a507fafe72fa21370d3fccaf07d55f360`  
		Last Modified: Thu, 15 Dec 2022 21:00:39 GMT  
		Size: 26.7 MB (26711442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:bionic` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:e982e0db23f2db036b39894a2abd7b672c6a06341a14887aafa52987588ecba2
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.3 MB (22305133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6c458a43b99429991bd6ca2814a3b98d2e1ab53a02c4774d168f6bee3fef4f6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:58:29 GMT
ADD file:dd193bc3de688c6b33fca185c08cbda4626f172cf3238f95dce8457c4ae6134b in / 
# Mon, 02 Jan 2023 18:58:30 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:76fb61f2d39f847056d344250a2953b5a1b082ded5f1cefd7d3afe364723dcdd`  
		Last Modified: Mon, 02 Jan 2023 19:00:09 GMT  
		Size: 22.3 MB (22305133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:bionic` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:72692f365a3ca8ec08354bad7ca6c93f266b0f72e6eeb069025880c0a051ba12
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23735210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a7735c5dff2a2abf1af04bd5e4736ef7b4e711ef4af64a9533fc13b466132b8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:26:21 GMT
ADD file:0acff7d2bb94db4847afdf5ab7b4385732c0a38fd82b0057ce0459f2b5d04042 in / 
# Mon, 02 Jan 2023 18:26:21 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:c347df5277017bf1ab15f258630e012d44bb79c509675d9464f96570668efab0`  
		Last Modified: Mon, 02 Jan 2023 18:27:02 GMT  
		Size: 23.7 MB (23735210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:bionic` - linux; 386

```console
$ docker pull ubuntu@sha256:35b4f89ec2ee42e7e12db3d107fe6a487137650a2af379bbd49165a1494246ea
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27165399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03aca6298f70696be92714f142c4d0573a3283e8d356ce6e5ec94b16ec0bf29c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:00:42 GMT
ADD file:dc76519390168deb6f9bb6052d08c6e7840908a831276d99bb19c6c245f8517b in / 
# Mon, 02 Jan 2023 18:00:43 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:1b284dbae22f155bfee2a25073c97c9758e66aa7129a455cb533d8e2cbc873f9`  
		Last Modified: Mon, 02 Jan 2023 18:01:17 GMT  
		Size: 27.2 MB (27165399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:bionic` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:cd4c7bc91a90a250921bdbae639da775d6edf8931275fd4af70a773ffe214b6f
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30442485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fcce684d6105c0224f1e459fea221dd4cbeaeaa5913d2ec3cde6bea8c964b81`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 19:01:19 GMT
ADD file:0bfaa9e69327bfd3f89d58fa598804b1e047724a7fa74ce6b8b79d10a39622d5 in / 
# Mon, 02 Jan 2023 19:01:21 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:b0461f07ee3325b91e2abe6d0903319c9b81e89e23b6991a65302059fa916485`  
		Last Modified: Mon, 02 Jan 2023 19:02:55 GMT  
		Size: 30.4 MB (30442485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:bionic` - linux; s390x

```console
$ docker pull ubuntu@sha256:2e66094d069cacf11ed438c5d1c9908f71afe68d66f104434d9e21c491d7d769
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.4 MB (25371161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:075428cb254ebdcea227666a93270d1ddf8dfeaf2004029655d6c49eccc45145`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:43:32 GMT
ADD file:735e44144d502635bb4630f743d35453afe550177166dec1f1f6f698c04d4a07 in / 
# Mon, 02 Jan 2023 18:43:35 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:22dceda0ac2bcb2588338678999c8d219d3822e36f9e1f3c16e9cd33703c859b`  
		Last Modified: Mon, 02 Jan 2023 18:45:16 GMT  
		Size: 25.4 MB (25371161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:bionic-20221215`

```console
$ docker pull ubuntu@sha256:c1d0baf2425ecef88a2f0c3543ec43690dc16cc80d3c4e593bb95e4f45390e45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 6
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ubuntu:bionic-20221215` - linux; amd64

```console
$ docker pull ubuntu@sha256:0d32fa8d8671fb6600db45620b40e5189fc02eebb7e29fe8fbb0db49b58becea
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 MB (26711442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e28a50f651f9eefbc8883ddc64704d609f3d95bf1ea9e41f873a8da68ea5ec98`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:48:55 GMT
ADD file:132da97f77ddc534ddb931a461d83ac2aa601dd4481360c874eac33b6c3470d9 in / 
# Mon, 02 Jan 2023 18:48:56 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a055bf07b5b05332897ea9a464c5e76a507fafe72fa21370d3fccaf07d55f360`  
		Last Modified: Thu, 15 Dec 2022 21:00:39 GMT  
		Size: 26.7 MB (26711442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:bionic-20221215` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:e982e0db23f2db036b39894a2abd7b672c6a06341a14887aafa52987588ecba2
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.3 MB (22305133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6c458a43b99429991bd6ca2814a3b98d2e1ab53a02c4774d168f6bee3fef4f6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:58:29 GMT
ADD file:dd193bc3de688c6b33fca185c08cbda4626f172cf3238f95dce8457c4ae6134b in / 
# Mon, 02 Jan 2023 18:58:30 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:76fb61f2d39f847056d344250a2953b5a1b082ded5f1cefd7d3afe364723dcdd`  
		Last Modified: Mon, 02 Jan 2023 19:00:09 GMT  
		Size: 22.3 MB (22305133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:bionic-20221215` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:72692f365a3ca8ec08354bad7ca6c93f266b0f72e6eeb069025880c0a051ba12
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23735210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a7735c5dff2a2abf1af04bd5e4736ef7b4e711ef4af64a9533fc13b466132b8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:26:21 GMT
ADD file:0acff7d2bb94db4847afdf5ab7b4385732c0a38fd82b0057ce0459f2b5d04042 in / 
# Mon, 02 Jan 2023 18:26:21 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:c347df5277017bf1ab15f258630e012d44bb79c509675d9464f96570668efab0`  
		Last Modified: Mon, 02 Jan 2023 18:27:02 GMT  
		Size: 23.7 MB (23735210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:bionic-20221215` - linux; 386

```console
$ docker pull ubuntu@sha256:35b4f89ec2ee42e7e12db3d107fe6a487137650a2af379bbd49165a1494246ea
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27165399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03aca6298f70696be92714f142c4d0573a3283e8d356ce6e5ec94b16ec0bf29c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:00:42 GMT
ADD file:dc76519390168deb6f9bb6052d08c6e7840908a831276d99bb19c6c245f8517b in / 
# Mon, 02 Jan 2023 18:00:43 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:1b284dbae22f155bfee2a25073c97c9758e66aa7129a455cb533d8e2cbc873f9`  
		Last Modified: Mon, 02 Jan 2023 18:01:17 GMT  
		Size: 27.2 MB (27165399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:bionic-20221215` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:cd4c7bc91a90a250921bdbae639da775d6edf8931275fd4af70a773ffe214b6f
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30442485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fcce684d6105c0224f1e459fea221dd4cbeaeaa5913d2ec3cde6bea8c964b81`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 19:01:19 GMT
ADD file:0bfaa9e69327bfd3f89d58fa598804b1e047724a7fa74ce6b8b79d10a39622d5 in / 
# Mon, 02 Jan 2023 19:01:21 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:b0461f07ee3325b91e2abe6d0903319c9b81e89e23b6991a65302059fa916485`  
		Last Modified: Mon, 02 Jan 2023 19:02:55 GMT  
		Size: 30.4 MB (30442485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:bionic-20221215` - linux; s390x

```console
$ docker pull ubuntu@sha256:2e66094d069cacf11ed438c5d1c9908f71afe68d66f104434d9e21c491d7d769
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.4 MB (25371161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:075428cb254ebdcea227666a93270d1ddf8dfeaf2004029655d6c49eccc45145`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:43:32 GMT
ADD file:735e44144d502635bb4630f743d35453afe550177166dec1f1f6f698c04d4a07 in / 
# Mon, 02 Jan 2023 18:43:35 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:22dceda0ac2bcb2588338678999c8d219d3822e36f9e1f3c16e9cd33703c859b`  
		Last Modified: Mon, 02 Jan 2023 18:45:16 GMT  
		Size: 25.4 MB (25371161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:devel`

```console
$ docker pull ubuntu@sha256:2ca8fe42bcc2979f66dd80c2987a43cfc5502626094b7f838f89759173f3956b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 6
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; riscv64
	-	linux; s390x

### `ubuntu:devel` - linux; amd64

```console
$ docker pull ubuntu@sha256:a40051efc6b591d38faffb11fdcef157103b9a4143edbc959c47e4b8c7d2e9eb
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.5 MB (27527968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab765816b3974729f0fde5886d9639590664cc371496b7e3c2e6e15edcef4896`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:49:08 GMT
ADD file:454acefef6c46f4d8ea05f6cafa0de83698e9def83069c3dceab15df524ccb8e in / 
# Mon, 02 Jan 2023 18:49:08 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:2627e5235478b0c8c569e6c5ff9e9e4e61fe03be2808f2324531fc5e73496661`  
		Last Modified: Mon, 02 Jan 2023 18:49:58 GMT  
		Size: 27.5 MB (27527968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:devel` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:a19c44ed33a0b9e83f3a38d546e0edbedecf9115ea1181c7f340f658d9f84e08
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.0 MB (26044672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dba2327ac07100563c451de6b4fbdb52d385fadf8941625eae6cb5e9f4eb5b04`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:58:50 GMT
ADD file:d5b7f8b874ee985d200663cd6bd4fe0dc5622c54f883004e0b84f92a74543601 in / 
# Mon, 02 Jan 2023 18:58:50 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:9538a59414233f23f1325d2dbad0378997afd754348ad4f3e9ebbdb32bc48f9d`  
		Last Modified: Mon, 02 Jan 2023 19:00:37 GMT  
		Size: 26.0 MB (26044672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:devel` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:c00affe19c594b8239661a7e68154932411690bde2a2345f6ca4f4d43970cd6c
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 MB (26855540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3497342a2081b8075868281584fb6f0e3846c3c38c9e497b86a7cfa58c9cc6bb`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:26:30 GMT
ADD file:87f1515364340e1c65eb76041a8285f4f511485c46275949dfcff1961d556236 in / 
# Mon, 02 Jan 2023 18:26:31 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:03a7a9a433574ecc00c891140ebadd82c8592d8f29b7d5808b6bb9a0234684b5`  
		Last Modified: Mon, 02 Jan 2023 18:27:21 GMT  
		Size: 26.9 MB (26855540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:devel` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:5dd623ca0547cc75302ee587122f469f92a066318914470f89fd03da32e3a03f
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32137445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41320a633d63c8e0ed6e649cb0f006ca301bc98cf4ae6b4bed31d2fd64b4f5e9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 19:01:43 GMT
ADD file:ea9743ea4cbf9deea0e3f8207b93c49151ad75ab037c042a1a4e0ef4f00c4779 in / 
# Mon, 02 Jan 2023 19:01:44 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:2f3462978627dacc0661848613bd622e57c1cfabc7c39dc5dacfd0053442bfd6`  
		Last Modified: Mon, 02 Jan 2023 19:03:25 GMT  
		Size: 32.1 MB (32137445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:devel` - linux; riscv64

```console
$ docker pull ubuntu@sha256:d19ba26eb53b3b5d6553756a420cbd4b15b5cea0b53af9899f2ada01174745ee
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.7 MB (25669058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05fdb55215bb484783ea45c3ba874a9b8886993abb3cb25be7d6ae2bd128b126`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:09:01 GMT
ADD file:512505c2df26db88aeeb5025ff073a2d8e98d995422df61a5cad94d79ef22a42 in / 
# Mon, 02 Jan 2023 18:09:02 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:ada5e428c090bd736690979612e7bece7c31ff1f1701ca35de4d1899e835e69a`  
		Last Modified: Mon, 02 Jan 2023 18:09:56 GMT  
		Size: 25.7 MB (25669058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:devel` - linux; s390x

```console
$ docker pull ubuntu@sha256:0656d5a63055e8953396bab2a4298334b29c5aca24eecb3b60a05a4ecc55feb5
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.1 MB (26058061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b0764f6e380c446c57c0abb303da0485b7713ecc5be8dbad8df75c1a9408ade`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:44:10 GMT
ADD file:00e905457e813e8aae003e51281910821c1d21806ac2f91869f665b31dc42d25 in / 
# Mon, 02 Jan 2023 18:44:13 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:45f3c7fc242d16c16595c5060c9b387bf176629597ffecfa997c8eb4491aa9cf`  
		Last Modified: Mon, 02 Jan 2023 18:45:38 GMT  
		Size: 26.1 MB (26058061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:focal`

```console
$ docker pull ubuntu@sha256:0e0402cd13f68137edb0266e1d2c682f217814420f2d43d300ed8f65479b14fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 6
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; riscv64
	-	linux; s390x

### `ubuntu:focal` - linux; amd64

```console
$ docker pull ubuntu@sha256:8eb87f3d6c9f2feee114ff0eff93ea9dfd20b294df0a0353bd6a4abf403336fe
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.6 MB (28576882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5447fc01ae62c20beffbfa50bc51b2797f9d7ebae031b8c2245b5be8ff1c75b`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:20:21 GMT
ADD file:9d282119af0c42bc823c95b4192a3350cf2cad670622017356dd2e637762e425 in / 
# Fri, 09 Dec 2022 01:20:21 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:846c0b181fff0c667d9444f8378e8fcfa13116da8d308bf21673f7e4bea8d580`  
		Last Modified: Thu, 08 Dec 2022 13:18:11 GMT  
		Size: 28.6 MB (28576882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:focal` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:5b9a4fec6095506e014f82a87fd101b66617389862e45c19158227fd339b7b8a
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.6 MB (24589003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fb5ac8108a9398fe94366894d521cbc966a087f1ab64bdfe5d191570147e45b`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:36:16 GMT
ADD file:b21aa237ba47147762a1b92947251163795189df45212a32e07ea3438a186e03 in / 
# Fri, 09 Dec 2022 01:36:17 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cfbc8b467b3eb89e7c394402566b2965c83f3103dafb141203e0020a8acd3774`  
		Last Modified: Fri, 09 Dec 2022 01:38:40 GMT  
		Size: 24.6 MB (24589003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:focal` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:bfd9523988a26a8913fbced7d00b00805572d093c4d8cbc64252b45e032302d5
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27193168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43ed104e759f96978d95473568dbaef829695dbade5c10be56f344948ab0caa1`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:46:50 GMT
ADD file:8cba976cb6ea226de769a768ee274e7679d34f923c93392f340680dc6696232e in / 
# Fri, 09 Dec 2022 01:46:50 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f04b4bbe15805316c8fda79beedd3b77e6b1ffcd0acf81226c3089e63f6bffeb`  
		Last Modified: Thu, 08 Dec 2022 15:28:02 GMT  
		Size: 27.2 MB (27193168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:focal` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:2d26e9521293ef4447ea8fbf8d327d503b5fdb9ae663a1653f16459576de0c6f
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.3 MB (33299473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e64751ae691c7f5e859dce9ad29635ba09f55f597b5ea437a913cd621bd193c`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:27:36 GMT
ADD file:ca32a106475146fa5bd0f3e4920ea64671b1054f57a1f33d4681fe170deda313 in / 
# Fri, 09 Dec 2022 01:27:37 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d198f08d15a240101119086908bf4c5035dc657d52bfe206ddeede273c6b84f3`  
		Last Modified: Fri, 09 Dec 2022 01:30:09 GMT  
		Size: 33.3 MB (33299473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:focal` - linux; riscv64

```console
$ docker pull ubuntu@sha256:c0e96f609e5f128bdb6d24d21d3bf0a9af6f17234976fa574dad7146a0f97fb2
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.2 MB (24245212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fd2ff3eb6191a7eeebc6ff2a4f23d0124d7ec1544dfbd3cd89f2eaf05d9b32f`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:10:28 GMT
ADD file:50c1d21a50d57d99470bd427f2ee427504ad0602a5046dbc6a04680574d27f39 in / 
# Fri, 09 Dec 2022 01:10:29 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:1bf57572b326faac5012873a6b3ea48eee0fe2649c47d425e34e149459c96c29`  
		Last Modified: Fri, 09 Dec 2022 01:32:24 GMT  
		Size: 24.2 MB (24245212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:focal` - linux; s390x

```console
$ docker pull ubuntu@sha256:7d78b9f8531a8d71bcf74cd217308ae0a41aa1f30f8f29e8552ae61178faccf0
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.0 MB (27016083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae0954099a5854523e740afc318eb515a87665a1cba92c65b8433d712d761845`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:52:40 GMT
ADD file:3d26982d2188d52ed2423587d3d2597c1f8ff614c19408d892cadc91d3743deb in / 
# Fri, 09 Dec 2022 01:52:43 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:5d330d9ae4f68425a719ebb93a3911994ee56b1328cf256fc3c44a4050de22ec`  
		Last Modified: Fri, 09 Dec 2022 01:54:57 GMT  
		Size: 27.0 MB (27016083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:focal-20221130`

```console
$ docker pull ubuntu@sha256:0e0402cd13f68137edb0266e1d2c682f217814420f2d43d300ed8f65479b14fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 6
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; riscv64
	-	linux; s390x

### `ubuntu:focal-20221130` - linux; amd64

```console
$ docker pull ubuntu@sha256:8eb87f3d6c9f2feee114ff0eff93ea9dfd20b294df0a0353bd6a4abf403336fe
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.6 MB (28576882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5447fc01ae62c20beffbfa50bc51b2797f9d7ebae031b8c2245b5be8ff1c75b`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:20:21 GMT
ADD file:9d282119af0c42bc823c95b4192a3350cf2cad670622017356dd2e637762e425 in / 
# Fri, 09 Dec 2022 01:20:21 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:846c0b181fff0c667d9444f8378e8fcfa13116da8d308bf21673f7e4bea8d580`  
		Last Modified: Thu, 08 Dec 2022 13:18:11 GMT  
		Size: 28.6 MB (28576882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:focal-20221130` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:5b9a4fec6095506e014f82a87fd101b66617389862e45c19158227fd339b7b8a
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.6 MB (24589003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fb5ac8108a9398fe94366894d521cbc966a087f1ab64bdfe5d191570147e45b`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:36:16 GMT
ADD file:b21aa237ba47147762a1b92947251163795189df45212a32e07ea3438a186e03 in / 
# Fri, 09 Dec 2022 01:36:17 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cfbc8b467b3eb89e7c394402566b2965c83f3103dafb141203e0020a8acd3774`  
		Last Modified: Fri, 09 Dec 2022 01:38:40 GMT  
		Size: 24.6 MB (24589003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:focal-20221130` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:bfd9523988a26a8913fbced7d00b00805572d093c4d8cbc64252b45e032302d5
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.2 MB (27193168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43ed104e759f96978d95473568dbaef829695dbade5c10be56f344948ab0caa1`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:46:50 GMT
ADD file:8cba976cb6ea226de769a768ee274e7679d34f923c93392f340680dc6696232e in / 
# Fri, 09 Dec 2022 01:46:50 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f04b4bbe15805316c8fda79beedd3b77e6b1ffcd0acf81226c3089e63f6bffeb`  
		Last Modified: Thu, 08 Dec 2022 15:28:02 GMT  
		Size: 27.2 MB (27193168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:focal-20221130` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:2d26e9521293ef4447ea8fbf8d327d503b5fdb9ae663a1653f16459576de0c6f
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.3 MB (33299473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e64751ae691c7f5e859dce9ad29635ba09f55f597b5ea437a913cd621bd193c`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:27:36 GMT
ADD file:ca32a106475146fa5bd0f3e4920ea64671b1054f57a1f33d4681fe170deda313 in / 
# Fri, 09 Dec 2022 01:27:37 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d198f08d15a240101119086908bf4c5035dc657d52bfe206ddeede273c6b84f3`  
		Last Modified: Fri, 09 Dec 2022 01:30:09 GMT  
		Size: 33.3 MB (33299473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:focal-20221130` - linux; riscv64

```console
$ docker pull ubuntu@sha256:c0e96f609e5f128bdb6d24d21d3bf0a9af6f17234976fa574dad7146a0f97fb2
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.2 MB (24245212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fd2ff3eb6191a7eeebc6ff2a4f23d0124d7ec1544dfbd3cd89f2eaf05d9b32f`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:10:28 GMT
ADD file:50c1d21a50d57d99470bd427f2ee427504ad0602a5046dbc6a04680574d27f39 in / 
# Fri, 09 Dec 2022 01:10:29 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:1bf57572b326faac5012873a6b3ea48eee0fe2649c47d425e34e149459c96c29`  
		Last Modified: Fri, 09 Dec 2022 01:32:24 GMT  
		Size: 24.2 MB (24245212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:focal-20221130` - linux; s390x

```console
$ docker pull ubuntu@sha256:7d78b9f8531a8d71bcf74cd217308ae0a41aa1f30f8f29e8552ae61178faccf0
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.0 MB (27016083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae0954099a5854523e740afc318eb515a87665a1cba92c65b8433d712d761845`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:52:40 GMT
ADD file:3d26982d2188d52ed2423587d3d2597c1f8ff614c19408d892cadc91d3743deb in / 
# Fri, 09 Dec 2022 01:52:43 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:5d330d9ae4f68425a719ebb93a3911994ee56b1328cf256fc3c44a4050de22ec`  
		Last Modified: Fri, 09 Dec 2022 01:54:57 GMT  
		Size: 27.0 MB (27016083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:jammy`

```console
$ docker pull ubuntu@sha256:27cb6e6ccef575a4698b66f5de06c7ecd61589132d5a91d098f7f3f9285415a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 6
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; riscv64
	-	linux; s390x

### `ubuntu:jammy` - linux; amd64

```console
$ docker pull ubuntu@sha256:965fbcae990b0467ed5657caceaec165018ef44a4d2d46c7cdea80a9dff0d1ea
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30428708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b7dfa7e8fdbe18ad425dd965a1049d984f31cf0ad57fa6d5377cca355e65f03`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:20:30 GMT
ADD file:481dd2da6de71525248eba186feeeafcc73cc956ade0a196a4e8b0c2424e74b9 in / 
# Fri, 09 Dec 2022 01:20:31 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6e3729cf69e0ce2de9e779575a1fec8b7fb5efdfa822829290ab6d5d1bc3e797`  
		Last Modified: Thu, 08 Dec 2022 14:10:00 GMT  
		Size: 30.4 MB (30428708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:jammy` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:ea8f467d512068a1e52494d5b2d959a9307a35682633d0b5d481e79c914c627f
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.0 MB (27023448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:591e4910d0b5364272463c57b86a8524eaee6b4bd3bb14f70979186281074374`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:36:30 GMT
ADD file:ca82b3c78a23b75345429f192c4b1f88b4e49e12808c85fccc2db04823c17d4e in / 
# Fri, 09 Dec 2022 01:36:30 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:c38006c9acc492149d706593acba951110798e57a7ad05103ae7a2d5969c14b6`  
		Last Modified: Thu, 08 Dec 2022 18:49:27 GMT  
		Size: 27.0 MB (27023448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:jammy` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:e77aa65a8a2bccbc47b96b4256995dd7ff447024ed5319527040f7cc465f6511
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28384475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c2c87c6c36efcba52fe55e88b05af548de25e295d2ebddf10dacbf605ac78b7`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:46:57 GMT
ADD file:429a55a11d4bcd15647d1316d9debd9ead4b4ab5c0b9146894d07c39aa814290 in / 
# Fri, 09 Dec 2022 01:46:57 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:10175de2f0c4f7d306f660ee073bce12b824c8012dd19b3c140aae053fabd1cc`  
		Last Modified: Thu, 08 Dec 2022 18:50:01 GMT  
		Size: 28.4 MB (28384475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:jammy` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:48d0b40359f8789f1c5d6065bf0d2a00c8d0d4913ac61670215b2debedd483e6
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.7 MB (35708154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c1fccf2a735e9fccfbca179861ea3236c30c085f334bf94077c1d2c9fc91912`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:27:53 GMT
ADD file:1a2557b357a1dca8521ee846ec16c9b2bd8a53839b9d4fda21a28f9ceeecb4b7 in / 
# Fri, 09 Dec 2022 01:27:55 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:ce75b47e476cd75b30dca46558ac79b39923aa94d7e4b0cc025e521404cdbab0`  
		Last Modified: Fri, 09 Dec 2022 01:30:32 GMT  
		Size: 35.7 MB (35708154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:jammy` - linux; riscv64

```console
$ docker pull ubuntu@sha256:f31546bc71659c643837d57f09a161f04e866b59da4f418e064082a756c4c23a
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27749556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b55084b9c02c8c6d013ed4b10f3e0c9306a50be9526ee8bf5870c8175554a72`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:12:29 GMT
ADD file:f46f460af5409f8fff839ed52d7332dff314cffbb59ee3f40e898ecb6bfa21f9 in / 
# Fri, 09 Dec 2022 01:12:30 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7548465e3aa5fee0518ca5aefe07a54411b419ec670a320e18c9b8892b0afc0f`  
		Last Modified: Fri, 09 Dec 2022 01:34:47 GMT  
		Size: 27.7 MB (27749556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:jammy` - linux; s390x

```console
$ docker pull ubuntu@sha256:4e3c33035b808801fc84ba48d5a779cd572167956f5123d846d7e1cbafe9e785
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.6 MB (28642146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85bdd095c778fa5e7dc7f04556d5e902c5e7a51e0e9f0dc794587d01c7e9f4ff`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:52:57 GMT
ADD file:aa22431536efed6cf05ad353979a4d4d5557c975e4333985e7b89b125f013ade in / 
# Fri, 09 Dec 2022 01:53:00 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:5125256a405e8f68b6edcff30c8e2e9761127daf8628a48134c73f8f45ce631f`  
		Last Modified: Fri, 09 Dec 2022 01:55:10 GMT  
		Size: 28.6 MB (28642146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:jammy-20221130`

```console
$ docker pull ubuntu@sha256:27cb6e6ccef575a4698b66f5de06c7ecd61589132d5a91d098f7f3f9285415a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 6
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; riscv64
	-	linux; s390x

### `ubuntu:jammy-20221130` - linux; amd64

```console
$ docker pull ubuntu@sha256:965fbcae990b0467ed5657caceaec165018ef44a4d2d46c7cdea80a9dff0d1ea
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30428708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b7dfa7e8fdbe18ad425dd965a1049d984f31cf0ad57fa6d5377cca355e65f03`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:20:30 GMT
ADD file:481dd2da6de71525248eba186feeeafcc73cc956ade0a196a4e8b0c2424e74b9 in / 
# Fri, 09 Dec 2022 01:20:31 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6e3729cf69e0ce2de9e779575a1fec8b7fb5efdfa822829290ab6d5d1bc3e797`  
		Last Modified: Thu, 08 Dec 2022 14:10:00 GMT  
		Size: 30.4 MB (30428708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:jammy-20221130` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:ea8f467d512068a1e52494d5b2d959a9307a35682633d0b5d481e79c914c627f
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.0 MB (27023448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:591e4910d0b5364272463c57b86a8524eaee6b4bd3bb14f70979186281074374`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:36:30 GMT
ADD file:ca82b3c78a23b75345429f192c4b1f88b4e49e12808c85fccc2db04823c17d4e in / 
# Fri, 09 Dec 2022 01:36:30 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:c38006c9acc492149d706593acba951110798e57a7ad05103ae7a2d5969c14b6`  
		Last Modified: Thu, 08 Dec 2022 18:49:27 GMT  
		Size: 27.0 MB (27023448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:jammy-20221130` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:e77aa65a8a2bccbc47b96b4256995dd7ff447024ed5319527040f7cc465f6511
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28384475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c2c87c6c36efcba52fe55e88b05af548de25e295d2ebddf10dacbf605ac78b7`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:46:57 GMT
ADD file:429a55a11d4bcd15647d1316d9debd9ead4b4ab5c0b9146894d07c39aa814290 in / 
# Fri, 09 Dec 2022 01:46:57 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:10175de2f0c4f7d306f660ee073bce12b824c8012dd19b3c140aae053fabd1cc`  
		Last Modified: Thu, 08 Dec 2022 18:50:01 GMT  
		Size: 28.4 MB (28384475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:jammy-20221130` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:48d0b40359f8789f1c5d6065bf0d2a00c8d0d4913ac61670215b2debedd483e6
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.7 MB (35708154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c1fccf2a735e9fccfbca179861ea3236c30c085f334bf94077c1d2c9fc91912`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:27:53 GMT
ADD file:1a2557b357a1dca8521ee846ec16c9b2bd8a53839b9d4fda21a28f9ceeecb4b7 in / 
# Fri, 09 Dec 2022 01:27:55 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:ce75b47e476cd75b30dca46558ac79b39923aa94d7e4b0cc025e521404cdbab0`  
		Last Modified: Fri, 09 Dec 2022 01:30:32 GMT  
		Size: 35.7 MB (35708154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:jammy-20221130` - linux; riscv64

```console
$ docker pull ubuntu@sha256:f31546bc71659c643837d57f09a161f04e866b59da4f418e064082a756c4c23a
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27749556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b55084b9c02c8c6d013ed4b10f3e0c9306a50be9526ee8bf5870c8175554a72`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:12:29 GMT
ADD file:f46f460af5409f8fff839ed52d7332dff314cffbb59ee3f40e898ecb6bfa21f9 in / 
# Fri, 09 Dec 2022 01:12:30 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7548465e3aa5fee0518ca5aefe07a54411b419ec670a320e18c9b8892b0afc0f`  
		Last Modified: Fri, 09 Dec 2022 01:34:47 GMT  
		Size: 27.7 MB (27749556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:jammy-20221130` - linux; s390x

```console
$ docker pull ubuntu@sha256:4e3c33035b808801fc84ba48d5a779cd572167956f5123d846d7e1cbafe9e785
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.6 MB (28642146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85bdd095c778fa5e7dc7f04556d5e902c5e7a51e0e9f0dc794587d01c7e9f4ff`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:52:57 GMT
ADD file:aa22431536efed6cf05ad353979a4d4d5557c975e4333985e7b89b125f013ade in / 
# Fri, 09 Dec 2022 01:53:00 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:5125256a405e8f68b6edcff30c8e2e9761127daf8628a48134c73f8f45ce631f`  
		Last Modified: Fri, 09 Dec 2022 01:55:10 GMT  
		Size: 28.6 MB (28642146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:kinetic`

```console
$ docker pull ubuntu@sha256:de3394e00e0e7e0d5f2092ae05a4c652f9918e67efa617565df2a1ed5353bbfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 6
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; riscv64
	-	linux; s390x

### `ubuntu:kinetic` - linux; amd64

```console
$ docker pull ubuntu@sha256:ee0752679bed0fa6c877f24dc19a94abb62d3d212197431f4d92638a1613ff17
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.5 MB (27478988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6547859cd2f8a9d8f1730ea25a2d5943fb8c8149be724229ce9078af13fcd79`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:20:40 GMT
ADD file:6c9f486c9412e2a47f196c5d3be4ea6041dc5eb579b1f1c35ae6dd8e7e3bfc64 in / 
# Fri, 09 Dec 2022 01:20:40 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3f701d9643d37eca8cb445ba978c767bc1e07bf958e94504db0298999bfe58c1`  
		Last Modified: Fri, 09 Dec 2022 01:22:08 GMT  
		Size: 27.5 MB (27478988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:kinetic` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:9b87317e5b0e1c0e30677e705e26926742c437701919af9b42a3f521b17e1b7e
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.9 MB (25892971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45a782654444cc7c6ef7d6679bf74d9c8c2868ee3dfeefec606b3cee48dde727`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:36:45 GMT
ADD file:d233b1e175c6c664c61d6b9655e68f70321ed1d18717f4709aede57ca633959d in / 
# Fri, 09 Dec 2022 01:36:45 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:32d980e58054da2da0ffd3e115907a93757913f5c431a52b4427379d3737ee4b`  
		Last Modified: Fri, 09 Dec 2022 01:39:17 GMT  
		Size: 25.9 MB (25892971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:kinetic` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:2042487aa17efb24674019bc4395b8dd1d2865e295a449542474adc072b177e7
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 MB (26700267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4efd9f596e004d75c444ffb9d89145965e05b1659617324396a63868cfb5c32`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:47:04 GMT
ADD file:bfc30ac3a38dd1f76f8a80aa5a10bd3abdcddba8c233e54a84935dc8959da97c in / 
# Fri, 09 Dec 2022 01:47:04 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:e9ac92330003b70c7feb4ea962cd0bd70aedbb2a72b3544cc3d9fb3a78447fa3`  
		Last Modified: Fri, 09 Dec 2022 01:48:26 GMT  
		Size: 26.7 MB (26700267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:kinetic` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:a3f4126e6e07018ae3be3cec5535417a885b968b45ae602b8d1d79e06704cf58
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32109595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d7ff9bcef9bffb44ee5dca265510529c871398f4268042d03bfb7972968bc22`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:28:11 GMT
ADD file:ff6e70600cb0ebcb9aa6617d8d8c160771f450ae3c28b4d56ee84f3b7b749fb2 in / 
# Fri, 09 Dec 2022 01:28:13 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8b9fbf12c270bd8e683dce41eb3b54e64a8658d36272e8728b81587156971e16`  
		Last Modified: Fri, 09 Dec 2022 01:30:58 GMT  
		Size: 32.1 MB (32109595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:kinetic` - linux; riscv64

```console
$ docker pull ubuntu@sha256:d708589f4214d8612f0fdf9ba3e8488e16f9a665f7fd9e0ba24edcdfc326f0f7
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.6 MB (25640259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4819792eac8ee5fc12e4dd0eb179280d6e3dcae69b77905d52a750f15b2cd6e2`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:14:46 GMT
ADD file:7e2bfb25c400fe48fedbb3adb245a3bc6b40ec07dae2feeb339c704b967ce658 in / 
# Fri, 09 Dec 2022 01:14:48 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:080423a9398e3d16c0feb2851e7596ddc2d8d33fdfb3bf0b4a881619b9b86c9f`  
		Last Modified: Fri, 09 Dec 2022 01:37:40 GMT  
		Size: 25.6 MB (25640259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:kinetic` - linux; s390x

```console
$ docker pull ubuntu@sha256:37b590aae211a73aa668db4b4f7dc13c16d6cd19c3a37d4cf5ff17d45a187c8b
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.0 MB (26029416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a63a77a500fa89ed0e551524eb9afeaa278fce9e6c95a92a13b1b9bd9499e6e`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:53:16 GMT
ADD file:3664024c53edd795e8d3cdd91bc26651c0962e85200bdf8a9b23c7103aad3433 in / 
# Fri, 09 Dec 2022 01:53:19 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a9f1ddfd3fe3bd668f8c96ba98090ed119f7f65f39d79a995ac0c7bf56187808`  
		Last Modified: Fri, 09 Dec 2022 01:55:24 GMT  
		Size: 26.0 MB (26029416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:kinetic-20221130`

```console
$ docker pull ubuntu@sha256:de3394e00e0e7e0d5f2092ae05a4c652f9918e67efa617565df2a1ed5353bbfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 6
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; riscv64
	-	linux; s390x

### `ubuntu:kinetic-20221130` - linux; amd64

```console
$ docker pull ubuntu@sha256:ee0752679bed0fa6c877f24dc19a94abb62d3d212197431f4d92638a1613ff17
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.5 MB (27478988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6547859cd2f8a9d8f1730ea25a2d5943fb8c8149be724229ce9078af13fcd79`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:20:40 GMT
ADD file:6c9f486c9412e2a47f196c5d3be4ea6041dc5eb579b1f1c35ae6dd8e7e3bfc64 in / 
# Fri, 09 Dec 2022 01:20:40 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3f701d9643d37eca8cb445ba978c767bc1e07bf958e94504db0298999bfe58c1`  
		Last Modified: Fri, 09 Dec 2022 01:22:08 GMT  
		Size: 27.5 MB (27478988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:kinetic-20221130` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:9b87317e5b0e1c0e30677e705e26926742c437701919af9b42a3f521b17e1b7e
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.9 MB (25892971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45a782654444cc7c6ef7d6679bf74d9c8c2868ee3dfeefec606b3cee48dde727`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:36:45 GMT
ADD file:d233b1e175c6c664c61d6b9655e68f70321ed1d18717f4709aede57ca633959d in / 
# Fri, 09 Dec 2022 01:36:45 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:32d980e58054da2da0ffd3e115907a93757913f5c431a52b4427379d3737ee4b`  
		Last Modified: Fri, 09 Dec 2022 01:39:17 GMT  
		Size: 25.9 MB (25892971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:kinetic-20221130` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:2042487aa17efb24674019bc4395b8dd1d2865e295a449542474adc072b177e7
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 MB (26700267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4efd9f596e004d75c444ffb9d89145965e05b1659617324396a63868cfb5c32`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:47:04 GMT
ADD file:bfc30ac3a38dd1f76f8a80aa5a10bd3abdcddba8c233e54a84935dc8959da97c in / 
# Fri, 09 Dec 2022 01:47:04 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:e9ac92330003b70c7feb4ea962cd0bd70aedbb2a72b3544cc3d9fb3a78447fa3`  
		Last Modified: Fri, 09 Dec 2022 01:48:26 GMT  
		Size: 26.7 MB (26700267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:kinetic-20221130` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:a3f4126e6e07018ae3be3cec5535417a885b968b45ae602b8d1d79e06704cf58
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32109595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d7ff9bcef9bffb44ee5dca265510529c871398f4268042d03bfb7972968bc22`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:28:11 GMT
ADD file:ff6e70600cb0ebcb9aa6617d8d8c160771f450ae3c28b4d56ee84f3b7b749fb2 in / 
# Fri, 09 Dec 2022 01:28:13 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8b9fbf12c270bd8e683dce41eb3b54e64a8658d36272e8728b81587156971e16`  
		Last Modified: Fri, 09 Dec 2022 01:30:58 GMT  
		Size: 32.1 MB (32109595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:kinetic-20221130` - linux; riscv64

```console
$ docker pull ubuntu@sha256:d708589f4214d8612f0fdf9ba3e8488e16f9a665f7fd9e0ba24edcdfc326f0f7
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.6 MB (25640259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4819792eac8ee5fc12e4dd0eb179280d6e3dcae69b77905d52a750f15b2cd6e2`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:14:46 GMT
ADD file:7e2bfb25c400fe48fedbb3adb245a3bc6b40ec07dae2feeb339c704b967ce658 in / 
# Fri, 09 Dec 2022 01:14:48 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:080423a9398e3d16c0feb2851e7596ddc2d8d33fdfb3bf0b4a881619b9b86c9f`  
		Last Modified: Fri, 09 Dec 2022 01:37:40 GMT  
		Size: 25.6 MB (25640259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:kinetic-20221130` - linux; s390x

```console
$ docker pull ubuntu@sha256:37b590aae211a73aa668db4b4f7dc13c16d6cd19c3a37d4cf5ff17d45a187c8b
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.0 MB (26029416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a63a77a500fa89ed0e551524eb9afeaa278fce9e6c95a92a13b1b9bd9499e6e`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:53:16 GMT
ADD file:3664024c53edd795e8d3cdd91bc26651c0962e85200bdf8a9b23c7103aad3433 in / 
# Fri, 09 Dec 2022 01:53:19 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a9f1ddfd3fe3bd668f8c96ba98090ed119f7f65f39d79a995ac0c7bf56187808`  
		Last Modified: Fri, 09 Dec 2022 01:55:24 GMT  
		Size: 26.0 MB (26029416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:latest`

```console
$ docker pull ubuntu@sha256:27cb6e6ccef575a4698b66f5de06c7ecd61589132d5a91d098f7f3f9285415a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 6
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; riscv64
	-	linux; s390x

### `ubuntu:latest` - linux; amd64

```console
$ docker pull ubuntu@sha256:965fbcae990b0467ed5657caceaec165018ef44a4d2d46c7cdea80a9dff0d1ea
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30428708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b7dfa7e8fdbe18ad425dd965a1049d984f31cf0ad57fa6d5377cca355e65f03`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:20:30 GMT
ADD file:481dd2da6de71525248eba186feeeafcc73cc956ade0a196a4e8b0c2424e74b9 in / 
# Fri, 09 Dec 2022 01:20:31 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:6e3729cf69e0ce2de9e779575a1fec8b7fb5efdfa822829290ab6d5d1bc3e797`  
		Last Modified: Thu, 08 Dec 2022 14:10:00 GMT  
		Size: 30.4 MB (30428708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:latest` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:ea8f467d512068a1e52494d5b2d959a9307a35682633d0b5d481e79c914c627f
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.0 MB (27023448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:591e4910d0b5364272463c57b86a8524eaee6b4bd3bb14f70979186281074374`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:36:30 GMT
ADD file:ca82b3c78a23b75345429f192c4b1f88b4e49e12808c85fccc2db04823c17d4e in / 
# Fri, 09 Dec 2022 01:36:30 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:c38006c9acc492149d706593acba951110798e57a7ad05103ae7a2d5969c14b6`  
		Last Modified: Thu, 08 Dec 2022 18:49:27 GMT  
		Size: 27.0 MB (27023448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:latest` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:e77aa65a8a2bccbc47b96b4256995dd7ff447024ed5319527040f7cc465f6511
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28384475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c2c87c6c36efcba52fe55e88b05af548de25e295d2ebddf10dacbf605ac78b7`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:46:57 GMT
ADD file:429a55a11d4bcd15647d1316d9debd9ead4b4ab5c0b9146894d07c39aa814290 in / 
# Fri, 09 Dec 2022 01:46:57 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:10175de2f0c4f7d306f660ee073bce12b824c8012dd19b3c140aae053fabd1cc`  
		Last Modified: Thu, 08 Dec 2022 18:50:01 GMT  
		Size: 28.4 MB (28384475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:latest` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:48d0b40359f8789f1c5d6065bf0d2a00c8d0d4913ac61670215b2debedd483e6
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.7 MB (35708154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c1fccf2a735e9fccfbca179861ea3236c30c085f334bf94077c1d2c9fc91912`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:27:53 GMT
ADD file:1a2557b357a1dca8521ee846ec16c9b2bd8a53839b9d4fda21a28f9ceeecb4b7 in / 
# Fri, 09 Dec 2022 01:27:55 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:ce75b47e476cd75b30dca46558ac79b39923aa94d7e4b0cc025e521404cdbab0`  
		Last Modified: Fri, 09 Dec 2022 01:30:32 GMT  
		Size: 35.7 MB (35708154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:latest` - linux; riscv64

```console
$ docker pull ubuntu@sha256:f31546bc71659c643837d57f09a161f04e866b59da4f418e064082a756c4c23a
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27749556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b55084b9c02c8c6d013ed4b10f3e0c9306a50be9526ee8bf5870c8175554a72`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:12:29 GMT
ADD file:f46f460af5409f8fff839ed52d7332dff314cffbb59ee3f40e898ecb6bfa21f9 in / 
# Fri, 09 Dec 2022 01:12:30 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7548465e3aa5fee0518ca5aefe07a54411b419ec670a320e18c9b8892b0afc0f`  
		Last Modified: Fri, 09 Dec 2022 01:34:47 GMT  
		Size: 27.7 MB (27749556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:latest` - linux; s390x

```console
$ docker pull ubuntu@sha256:4e3c33035b808801fc84ba48d5a779cd572167956f5123d846d7e1cbafe9e785
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.6 MB (28642146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85bdd095c778fa5e7dc7f04556d5e902c5e7a51e0e9f0dc794587d01c7e9f4ff`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:52:57 GMT
ADD file:aa22431536efed6cf05ad353979a4d4d5557c975e4333985e7b89b125f013ade in / 
# Fri, 09 Dec 2022 01:53:00 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:5125256a405e8f68b6edcff30c8e2e9761127daf8628a48134c73f8f45ce631f`  
		Last Modified: Fri, 09 Dec 2022 01:55:10 GMT  
		Size: 28.6 MB (28642146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:lunar`

```console
$ docker pull ubuntu@sha256:2ca8fe42bcc2979f66dd80c2987a43cfc5502626094b7f838f89759173f3956b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 6
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; riscv64
	-	linux; s390x

### `ubuntu:lunar` - linux; amd64

```console
$ docker pull ubuntu@sha256:a40051efc6b591d38faffb11fdcef157103b9a4143edbc959c47e4b8c7d2e9eb
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.5 MB (27527968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab765816b3974729f0fde5886d9639590664cc371496b7e3c2e6e15edcef4896`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:49:08 GMT
ADD file:454acefef6c46f4d8ea05f6cafa0de83698e9def83069c3dceab15df524ccb8e in / 
# Mon, 02 Jan 2023 18:49:08 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:2627e5235478b0c8c569e6c5ff9e9e4e61fe03be2808f2324531fc5e73496661`  
		Last Modified: Mon, 02 Jan 2023 18:49:58 GMT  
		Size: 27.5 MB (27527968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:lunar` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:a19c44ed33a0b9e83f3a38d546e0edbedecf9115ea1181c7f340f658d9f84e08
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.0 MB (26044672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dba2327ac07100563c451de6b4fbdb52d385fadf8941625eae6cb5e9f4eb5b04`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:58:50 GMT
ADD file:d5b7f8b874ee985d200663cd6bd4fe0dc5622c54f883004e0b84f92a74543601 in / 
# Mon, 02 Jan 2023 18:58:50 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:9538a59414233f23f1325d2dbad0378997afd754348ad4f3e9ebbdb32bc48f9d`  
		Last Modified: Mon, 02 Jan 2023 19:00:37 GMT  
		Size: 26.0 MB (26044672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:lunar` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:c00affe19c594b8239661a7e68154932411690bde2a2345f6ca4f4d43970cd6c
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 MB (26855540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3497342a2081b8075868281584fb6f0e3846c3c38c9e497b86a7cfa58c9cc6bb`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:26:30 GMT
ADD file:87f1515364340e1c65eb76041a8285f4f511485c46275949dfcff1961d556236 in / 
# Mon, 02 Jan 2023 18:26:31 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:03a7a9a433574ecc00c891140ebadd82c8592d8f29b7d5808b6bb9a0234684b5`  
		Last Modified: Mon, 02 Jan 2023 18:27:21 GMT  
		Size: 26.9 MB (26855540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:lunar` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:5dd623ca0547cc75302ee587122f469f92a066318914470f89fd03da32e3a03f
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32137445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41320a633d63c8e0ed6e649cb0f006ca301bc98cf4ae6b4bed31d2fd64b4f5e9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 19:01:43 GMT
ADD file:ea9743ea4cbf9deea0e3f8207b93c49151ad75ab037c042a1a4e0ef4f00c4779 in / 
# Mon, 02 Jan 2023 19:01:44 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:2f3462978627dacc0661848613bd622e57c1cfabc7c39dc5dacfd0053442bfd6`  
		Last Modified: Mon, 02 Jan 2023 19:03:25 GMT  
		Size: 32.1 MB (32137445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:lunar` - linux; riscv64

```console
$ docker pull ubuntu@sha256:d19ba26eb53b3b5d6553756a420cbd4b15b5cea0b53af9899f2ada01174745ee
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.7 MB (25669058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05fdb55215bb484783ea45c3ba874a9b8886993abb3cb25be7d6ae2bd128b126`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:09:01 GMT
ADD file:512505c2df26db88aeeb5025ff073a2d8e98d995422df61a5cad94d79ef22a42 in / 
# Mon, 02 Jan 2023 18:09:02 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:ada5e428c090bd736690979612e7bece7c31ff1f1701ca35de4d1899e835e69a`  
		Last Modified: Mon, 02 Jan 2023 18:09:56 GMT  
		Size: 25.7 MB (25669058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:lunar` - linux; s390x

```console
$ docker pull ubuntu@sha256:0656d5a63055e8953396bab2a4298334b29c5aca24eecb3b60a05a4ecc55feb5
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.1 MB (26058061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b0764f6e380c446c57c0abb303da0485b7713ecc5be8dbad8df75c1a9408ade`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:44:10 GMT
ADD file:00e905457e813e8aae003e51281910821c1d21806ac2f91869f665b31dc42d25 in / 
# Mon, 02 Jan 2023 18:44:13 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:45f3c7fc242d16c16595c5060c9b387bf176629597ffecfa997c8eb4491aa9cf`  
		Last Modified: Mon, 02 Jan 2023 18:45:38 GMT  
		Size: 26.1 MB (26058061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:lunar-20221216`

```console
$ docker pull ubuntu@sha256:2ca8fe42bcc2979f66dd80c2987a43cfc5502626094b7f838f89759173f3956b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 6
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; riscv64
	-	linux; s390x

### `ubuntu:lunar-20221216` - linux; amd64

```console
$ docker pull ubuntu@sha256:a40051efc6b591d38faffb11fdcef157103b9a4143edbc959c47e4b8c7d2e9eb
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.5 MB (27527968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab765816b3974729f0fde5886d9639590664cc371496b7e3c2e6e15edcef4896`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:49:08 GMT
ADD file:454acefef6c46f4d8ea05f6cafa0de83698e9def83069c3dceab15df524ccb8e in / 
# Mon, 02 Jan 2023 18:49:08 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:2627e5235478b0c8c569e6c5ff9e9e4e61fe03be2808f2324531fc5e73496661`  
		Last Modified: Mon, 02 Jan 2023 18:49:58 GMT  
		Size: 27.5 MB (27527968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:lunar-20221216` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:a19c44ed33a0b9e83f3a38d546e0edbedecf9115ea1181c7f340f658d9f84e08
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.0 MB (26044672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dba2327ac07100563c451de6b4fbdb52d385fadf8941625eae6cb5e9f4eb5b04`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:58:50 GMT
ADD file:d5b7f8b874ee985d200663cd6bd4fe0dc5622c54f883004e0b84f92a74543601 in / 
# Mon, 02 Jan 2023 18:58:50 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:9538a59414233f23f1325d2dbad0378997afd754348ad4f3e9ebbdb32bc48f9d`  
		Last Modified: Mon, 02 Jan 2023 19:00:37 GMT  
		Size: 26.0 MB (26044672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:lunar-20221216` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:c00affe19c594b8239661a7e68154932411690bde2a2345f6ca4f4d43970cd6c
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 MB (26855540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3497342a2081b8075868281584fb6f0e3846c3c38c9e497b86a7cfa58c9cc6bb`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:26:30 GMT
ADD file:87f1515364340e1c65eb76041a8285f4f511485c46275949dfcff1961d556236 in / 
# Mon, 02 Jan 2023 18:26:31 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:03a7a9a433574ecc00c891140ebadd82c8592d8f29b7d5808b6bb9a0234684b5`  
		Last Modified: Mon, 02 Jan 2023 18:27:21 GMT  
		Size: 26.9 MB (26855540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:lunar-20221216` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:5dd623ca0547cc75302ee587122f469f92a066318914470f89fd03da32e3a03f
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32137445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41320a633d63c8e0ed6e649cb0f006ca301bc98cf4ae6b4bed31d2fd64b4f5e9`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 19:01:43 GMT
ADD file:ea9743ea4cbf9deea0e3f8207b93c49151ad75ab037c042a1a4e0ef4f00c4779 in / 
# Mon, 02 Jan 2023 19:01:44 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:2f3462978627dacc0661848613bd622e57c1cfabc7c39dc5dacfd0053442bfd6`  
		Last Modified: Mon, 02 Jan 2023 19:03:25 GMT  
		Size: 32.1 MB (32137445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:lunar-20221216` - linux; riscv64

```console
$ docker pull ubuntu@sha256:d19ba26eb53b3b5d6553756a420cbd4b15b5cea0b53af9899f2ada01174745ee
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.7 MB (25669058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05fdb55215bb484783ea45c3ba874a9b8886993abb3cb25be7d6ae2bd128b126`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:09:01 GMT
ADD file:512505c2df26db88aeeb5025ff073a2d8e98d995422df61a5cad94d79ef22a42 in / 
# Mon, 02 Jan 2023 18:09:02 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:ada5e428c090bd736690979612e7bece7c31ff1f1701ca35de4d1899e835e69a`  
		Last Modified: Mon, 02 Jan 2023 18:09:56 GMT  
		Size: 25.7 MB (25669058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:lunar-20221216` - linux; s390x

```console
$ docker pull ubuntu@sha256:0656d5a63055e8953396bab2a4298334b29c5aca24eecb3b60a05a4ecc55feb5
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.1 MB (26058061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b0764f6e380c446c57c0abb303da0485b7713ecc5be8dbad8df75c1a9408ade`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:44:10 GMT
ADD file:00e905457e813e8aae003e51281910821c1d21806ac2f91869f665b31dc42d25 in / 
# Mon, 02 Jan 2023 18:44:13 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:45f3c7fc242d16c16595c5060c9b387bf176629597ffecfa997c8eb4491aa9cf`  
		Last Modified: Mon, 02 Jan 2023 18:45:38 GMT  
		Size: 26.1 MB (26058061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:rolling`

```console
$ docker pull ubuntu@sha256:de3394e00e0e7e0d5f2092ae05a4c652f9918e67efa617565df2a1ed5353bbfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 6
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; ppc64le
	-	linux; riscv64
	-	linux; s390x

### `ubuntu:rolling` - linux; amd64

```console
$ docker pull ubuntu@sha256:ee0752679bed0fa6c877f24dc19a94abb62d3d212197431f4d92638a1613ff17
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.5 MB (27478988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6547859cd2f8a9d8f1730ea25a2d5943fb8c8149be724229ce9078af13fcd79`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:20:40 GMT
ADD file:6c9f486c9412e2a47f196c5d3be4ea6041dc5eb579b1f1c35ae6dd8e7e3bfc64 in / 
# Fri, 09 Dec 2022 01:20:40 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3f701d9643d37eca8cb445ba978c767bc1e07bf958e94504db0298999bfe58c1`  
		Last Modified: Fri, 09 Dec 2022 01:22:08 GMT  
		Size: 27.5 MB (27478988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:rolling` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:9b87317e5b0e1c0e30677e705e26926742c437701919af9b42a3f521b17e1b7e
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.9 MB (25892971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45a782654444cc7c6ef7d6679bf74d9c8c2868ee3dfeefec606b3cee48dde727`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:36:45 GMT
ADD file:d233b1e175c6c664c61d6b9655e68f70321ed1d18717f4709aede57ca633959d in / 
# Fri, 09 Dec 2022 01:36:45 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:32d980e58054da2da0ffd3e115907a93757913f5c431a52b4427379d3737ee4b`  
		Last Modified: Fri, 09 Dec 2022 01:39:17 GMT  
		Size: 25.9 MB (25892971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:rolling` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:2042487aa17efb24674019bc4395b8dd1d2865e295a449542474adc072b177e7
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 MB (26700267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4efd9f596e004d75c444ffb9d89145965e05b1659617324396a63868cfb5c32`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:47:04 GMT
ADD file:bfc30ac3a38dd1f76f8a80aa5a10bd3abdcddba8c233e54a84935dc8959da97c in / 
# Fri, 09 Dec 2022 01:47:04 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:e9ac92330003b70c7feb4ea962cd0bd70aedbb2a72b3544cc3d9fb3a78447fa3`  
		Last Modified: Fri, 09 Dec 2022 01:48:26 GMT  
		Size: 26.7 MB (26700267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:rolling` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:a3f4126e6e07018ae3be3cec5535417a885b968b45ae602b8d1d79e06704cf58
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.1 MB (32109595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d7ff9bcef9bffb44ee5dca265510529c871398f4268042d03bfb7972968bc22`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:28:11 GMT
ADD file:ff6e70600cb0ebcb9aa6617d8d8c160771f450ae3c28b4d56ee84f3b7b749fb2 in / 
# Fri, 09 Dec 2022 01:28:13 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:8b9fbf12c270bd8e683dce41eb3b54e64a8658d36272e8728b81587156971e16`  
		Last Modified: Fri, 09 Dec 2022 01:30:58 GMT  
		Size: 32.1 MB (32109595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:rolling` - linux; riscv64

```console
$ docker pull ubuntu@sha256:d708589f4214d8612f0fdf9ba3e8488e16f9a665f7fd9e0ba24edcdfc326f0f7
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.6 MB (25640259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4819792eac8ee5fc12e4dd0eb179280d6e3dcae69b77905d52a750f15b2cd6e2`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:14:46 GMT
ADD file:7e2bfb25c400fe48fedbb3adb245a3bc6b40ec07dae2feeb339c704b967ce658 in / 
# Fri, 09 Dec 2022 01:14:48 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:080423a9398e3d16c0feb2851e7596ddc2d8d33fdfb3bf0b4a881619b9b86c9f`  
		Last Modified: Fri, 09 Dec 2022 01:37:40 GMT  
		Size: 25.6 MB (25640259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:rolling` - linux; s390x

```console
$ docker pull ubuntu@sha256:37b590aae211a73aa668db4b4f7dc13c16d6cd19c3a37d4cf5ff17d45a187c8b
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.0 MB (26029416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a63a77a500fa89ed0e551524eb9afeaa278fce9e6c95a92a13b1b9bd9499e6e`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 09 Dec 2022 01:53:16 GMT
ADD file:3664024c53edd795e8d3cdd91bc26651c0962e85200bdf8a9b23c7103aad3433 in / 
# Fri, 09 Dec 2022 01:53:19 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a9f1ddfd3fe3bd668f8c96ba98090ed119f7f65f39d79a995ac0c7bf56187808`  
		Last Modified: Fri, 09 Dec 2022 01:55:24 GMT  
		Size: 26.0 MB (26029416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:trusty`

```console
$ docker pull ubuntu@sha256:64483f3496c1373bfd55348e88694d1c4d0c9b660dee6bfef5e12f43b9933b30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 5
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `ubuntu:trusty` - linux; amd64

```console
$ docker pull ubuntu@sha256:881afbae521c910f764f7187dbfbca3cc10c26f8bafa458c76dda009a901c29d
```

-	Docker Version: 19.03.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.8 MB (70764430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13b66b487594a1f2b75396013bc05d29d9f527852d96c5577cc4f187559875d0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 25 Mar 2021 22:33:40 GMT
ADD file:276b5d943a4d284f8a7b249176a31f93d95e852480c2b851de287e53ff622bba in / 
# Thu, 25 Mar 2021 22:33:42 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Mar 2021 22:33:43 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Thu, 25 Mar 2021 22:33:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Mar 2021 22:33:44 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:2e6e20c8e2e69fa5c3fcc310f419975cef5fbeb6f7f2fe1374071141281b6a06`  
		Last Modified: Wed, 18 Dec 2019 13:21:28 GMT  
		Size: 70.7 MB (70691577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0551a797c01db074ab0233ceb567e66b8ebdcb9de9a2e7baa36d57dfbca463a3`  
		Last Modified: Thu, 25 Mar 2021 22:35:39 GMT  
		Size: 72.7 KB (72664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:512123a864da5e2a62949e65b67106292c5c704eff90cac2b949fc8d7ac1e58e`  
		Last Modified: Thu, 25 Mar 2021 22:35:39 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:trusty` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:cc2cb4eb446d23b59b9dc16f69be43420ef690e744bfea1706dabacd6136d1c6
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.7 MB (64700952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5f395c67d441f6c41003473f9ff7bc1bdd2aaac158b3e2ae807587ff9f4c226`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 25 Oct 2022 03:07:46 GMT
ADD file:e9d55e059869915743a8ca8e64582d23c48fe7e90e439daccd56d3e08e8673b4 in / 
# Tue, 25 Oct 2022 03:07:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 25 Oct 2022 03:07:48 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 25 Oct 2022 03:07:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 25 Oct 2022 03:07:49 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:0db3a87a3d7959895fd860c8b924980adda6e77f5d315b6676a4ac0e12518978`  
		Last Modified: Thu, 19 Dec 2019 06:16:01 GMT  
		Size: 64.6 MB (64624015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a31831ce9fd9e38ad9d926286efdb85e400dc823da723d72cc676869c295fb0`  
		Last Modified: Tue, 25 Oct 2022 03:10:28 GMT  
		Size: 76.8 KB (76775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66373b79ee1bedb2a2bf237fb2a717660559ee8e3fec0aae52d9797c2b32b27c`  
		Last Modified: Tue, 25 Oct 2022 03:10:28 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:trusty` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:5ed16aa332467821529d451800e6fe599d83e30471e91b096752f8696d9bf6e9
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.5 MB (66525502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55b7b4f7c5d6a56a3ccb5e93538311838599b65e746a07a0d90cb729e3559df7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 25 Oct 2022 05:55:11 GMT
ADD file:b0eb0db52e323748ea9b8d7f8aecbc523a747619cd08663bab0fe60ab59bc60e in / 
# Tue, 25 Oct 2022 05:55:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 25 Oct 2022 05:55:13 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 25 Oct 2022 05:55:14 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 25 Oct 2022 05:55:14 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:d1a5a1e51f251c3431dec02e2cc8d157e92d1b46913708ce9e600747a6274977`  
		Last Modified: Thu, 19 Dec 2019 03:57:08 GMT  
		Size: 66.5 MB (66466219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f8eea31a63686c11aa74b7df6da0f6450afbee2c9e1e3a6491d422065c6f91`  
		Last Modified: Tue, 25 Oct 2022 05:56:43 GMT  
		Size: 59.1 KB (59096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a72d031efbfb01751d5de3b287566e7d7f33697674a6c4778b7501903cd379ee`  
		Last Modified: Tue, 25 Oct 2022 05:56:43 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:trusty` - linux; 386

```console
$ docker pull ubuntu@sha256:c97d63976268e6c2f3764be91e59f82009b2883d22c3dc6ff1f63e3ad6abdb05
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.4 MB (68445472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8a7710ba73fd21ad01442fe2b079693c60a5b77b18403d56e5da5448e325d06`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 05 Apr 2022 22:39:14 GMT
ADD file:e034601a525da53b0f39bb04d6e2264e2a592d0ae7c21e00697b9b62ca1efec9 in / 
# Tue, 05 Apr 2022 22:39:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Apr 2022 22:39:16 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 05 Apr 2022 22:39:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Apr 2022 22:39:18 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:630712fe5783a35ad52a7026002143cb4f8fe65d34097dcaa4c4331b1b059a17`  
		Last Modified: Thu, 19 Dec 2019 04:44:02 GMT  
		Size: 68.4 MB (68380440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03124bfb4886d9ba012a00a087fb41b4cc7e99517b3e2a2e6fd1e2ad327af191`  
		Last Modified: Tue, 05 Apr 2022 22:40:17 GMT  
		Size: 64.9 KB (64870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22b953ad705784700c1611b7258f6c783a34b06bf27ed3efbd9acc7be80ba991`  
		Last Modified: Tue, 05 Apr 2022 22:40:17 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:trusty` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:209f78eaf05254c51cff7676b913bcb70c1da54e58ae728a592ea58f3b5552b4
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.4 MB (73443164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd23a098588cb567106c63829bf08759e87f4235bbd4c90168e6b065420ac853`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 02 Aug 2022 01:31:42 GMT
ADD file:581665e92c72c8638b40fe509de6479dc1a5d7b5ffe8d6706006178c406e35e2 in / 
# Tue, 02 Aug 2022 01:31:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 02 Aug 2022 01:31:48 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 02 Aug 2022 01:31:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 02 Aug 2022 01:31:50 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:bed4146d918c6c9a57bc3a8bf829e702975b0e53c7f25920fe9435b58ed6b64f`  
		Last Modified: Thu, 19 Dec 2019 04:26:52 GMT  
		Size: 73.4 MB (73379539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:736dbcbc0bcb73948970c71c59c6fc5662698a0cdca10a232da87ede89aabeef`  
		Last Modified: Tue, 02 Aug 2022 01:35:21 GMT  
		Size: 63.4 KB (63436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:376b7bbeb4d42e6e9b75e9ad5bd043790235c8963cac05a03bc5400002ae965b`  
		Last Modified: Tue, 02 Aug 2022 01:35:21 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:trusty-20191217`

```console
$ docker pull ubuntu@sha256:64483f3496c1373bfd55348e88694d1c4d0c9b660dee6bfef5e12f43b9933b30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 5
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `ubuntu:trusty-20191217` - linux; amd64

```console
$ docker pull ubuntu@sha256:881afbae521c910f764f7187dbfbca3cc10c26f8bafa458c76dda009a901c29d
```

-	Docker Version: 19.03.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.8 MB (70764430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13b66b487594a1f2b75396013bc05d29d9f527852d96c5577cc4f187559875d0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 25 Mar 2021 22:33:40 GMT
ADD file:276b5d943a4d284f8a7b249176a31f93d95e852480c2b851de287e53ff622bba in / 
# Thu, 25 Mar 2021 22:33:42 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Mar 2021 22:33:43 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Thu, 25 Mar 2021 22:33:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Mar 2021 22:33:44 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:2e6e20c8e2e69fa5c3fcc310f419975cef5fbeb6f7f2fe1374071141281b6a06`  
		Last Modified: Wed, 18 Dec 2019 13:21:28 GMT  
		Size: 70.7 MB (70691577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0551a797c01db074ab0233ceb567e66b8ebdcb9de9a2e7baa36d57dfbca463a3`  
		Last Modified: Thu, 25 Mar 2021 22:35:39 GMT  
		Size: 72.7 KB (72664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:512123a864da5e2a62949e65b67106292c5c704eff90cac2b949fc8d7ac1e58e`  
		Last Modified: Thu, 25 Mar 2021 22:35:39 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:trusty-20191217` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:cc2cb4eb446d23b59b9dc16f69be43420ef690e744bfea1706dabacd6136d1c6
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.7 MB (64700952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5f395c67d441f6c41003473f9ff7bc1bdd2aaac158b3e2ae807587ff9f4c226`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 25 Oct 2022 03:07:46 GMT
ADD file:e9d55e059869915743a8ca8e64582d23c48fe7e90e439daccd56d3e08e8673b4 in / 
# Tue, 25 Oct 2022 03:07:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 25 Oct 2022 03:07:48 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 25 Oct 2022 03:07:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 25 Oct 2022 03:07:49 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:0db3a87a3d7959895fd860c8b924980adda6e77f5d315b6676a4ac0e12518978`  
		Last Modified: Thu, 19 Dec 2019 06:16:01 GMT  
		Size: 64.6 MB (64624015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a31831ce9fd9e38ad9d926286efdb85e400dc823da723d72cc676869c295fb0`  
		Last Modified: Tue, 25 Oct 2022 03:10:28 GMT  
		Size: 76.8 KB (76775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66373b79ee1bedb2a2bf237fb2a717660559ee8e3fec0aae52d9797c2b32b27c`  
		Last Modified: Tue, 25 Oct 2022 03:10:28 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:trusty-20191217` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:5ed16aa332467821529d451800e6fe599d83e30471e91b096752f8696d9bf6e9
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.5 MB (66525502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55b7b4f7c5d6a56a3ccb5e93538311838599b65e746a07a0d90cb729e3559df7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 25 Oct 2022 05:55:11 GMT
ADD file:b0eb0db52e323748ea9b8d7f8aecbc523a747619cd08663bab0fe60ab59bc60e in / 
# Tue, 25 Oct 2022 05:55:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 25 Oct 2022 05:55:13 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 25 Oct 2022 05:55:14 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 25 Oct 2022 05:55:14 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:d1a5a1e51f251c3431dec02e2cc8d157e92d1b46913708ce9e600747a6274977`  
		Last Modified: Thu, 19 Dec 2019 03:57:08 GMT  
		Size: 66.5 MB (66466219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f8eea31a63686c11aa74b7df6da0f6450afbee2c9e1e3a6491d422065c6f91`  
		Last Modified: Tue, 25 Oct 2022 05:56:43 GMT  
		Size: 59.1 KB (59096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a72d031efbfb01751d5de3b287566e7d7f33697674a6c4778b7501903cd379ee`  
		Last Modified: Tue, 25 Oct 2022 05:56:43 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:trusty-20191217` - linux; 386

```console
$ docker pull ubuntu@sha256:c97d63976268e6c2f3764be91e59f82009b2883d22c3dc6ff1f63e3ad6abdb05
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.4 MB (68445472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8a7710ba73fd21ad01442fe2b079693c60a5b77b18403d56e5da5448e325d06`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 05 Apr 2022 22:39:14 GMT
ADD file:e034601a525da53b0f39bb04d6e2264e2a592d0ae7c21e00697b9b62ca1efec9 in / 
# Tue, 05 Apr 2022 22:39:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Apr 2022 22:39:16 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 05 Apr 2022 22:39:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Apr 2022 22:39:18 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:630712fe5783a35ad52a7026002143cb4f8fe65d34097dcaa4c4331b1b059a17`  
		Last Modified: Thu, 19 Dec 2019 04:44:02 GMT  
		Size: 68.4 MB (68380440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03124bfb4886d9ba012a00a087fb41b4cc7e99517b3e2a2e6fd1e2ad327af191`  
		Last Modified: Tue, 05 Apr 2022 22:40:17 GMT  
		Size: 64.9 KB (64870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22b953ad705784700c1611b7258f6c783a34b06bf27ed3efbd9acc7be80ba991`  
		Last Modified: Tue, 05 Apr 2022 22:40:17 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:trusty-20191217` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:209f78eaf05254c51cff7676b913bcb70c1da54e58ae728a592ea58f3b5552b4
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.4 MB (73443164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd23a098588cb567106c63829bf08759e87f4235bbd4c90168e6b065420ac853`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 02 Aug 2022 01:31:42 GMT
ADD file:581665e92c72c8638b40fe509de6479dc1a5d7b5ffe8d6706006178c406e35e2 in / 
# Tue, 02 Aug 2022 01:31:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 02 Aug 2022 01:31:48 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 02 Aug 2022 01:31:50 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 02 Aug 2022 01:31:50 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:bed4146d918c6c9a57bc3a8bf829e702975b0e53c7f25920fe9435b58ed6b64f`  
		Last Modified: Thu, 19 Dec 2019 04:26:52 GMT  
		Size: 73.4 MB (73379539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:736dbcbc0bcb73948970c71c59c6fc5662698a0cdca10a232da87ede89aabeef`  
		Last Modified: Tue, 02 Aug 2022 01:35:21 GMT  
		Size: 63.4 KB (63436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:376b7bbeb4d42e6e9b75e9ad5bd043790235c8963cac05a03bc5400002ae965b`  
		Last Modified: Tue, 02 Aug 2022 01:35:21 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:xenial`

```console
$ docker pull ubuntu@sha256:1f1a2d56de1d604801a9671f301190704c25d604a416f59e03c04f5c6ffee0d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 6
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ubuntu:xenial` - linux; amd64

```console
$ docker pull ubuntu@sha256:a3785f78ab8547ae2710c89e627783cfa7ee7824d3468cae6835c9f4eae23ff7
```

-	Docker Version: 20.10.7
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.5 MB (46499103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6f50765242581c887ff1acc2511fa2d885c52d8fb3ac8c4bba131fd86567f2e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 31 Aug 2021 01:21:27 GMT
ADD file:11b425d4c08e81a3e0cb2e0345d27cd5fc844dd83f1096af4cc05f635824ff5d in / 
# Tue, 31 Aug 2021 01:21:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 31 Aug 2021 01:21:29 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 31 Aug 2021 01:21:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 31 Aug 2021 01:21:30 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:58690f9b18fca6469a14da4e212c96849469f9b1be6661d2342a4bf01774aa50`  
		Last Modified: Thu, 05 Aug 2021 00:25:05 GMT  
		Size: 46.5 MB (46497548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b51569e7c50720acf6860327847fe342a1afbe148d24c529fb81df105e3eed01`  
		Last Modified: Tue, 31 Aug 2021 01:23:09 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da8ef40b9ecabc2679fe2419957220c0272a965c5cf7e0269fa1aeeb8c56f2e1`  
		Last Modified: Tue, 31 Aug 2021 01:23:08 GMT  
		Size: 528.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb15d46c38dcd1ea0b1990006c3366ecd10c79d374f341687eb2cb23a2c8672e`  
		Last Modified: Tue, 31 Aug 2021 01:23:08 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:xenial` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:5c33df0beb44570500a6b44f64106321ad9b7510eea35120e9180f55164752b7
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 MB (40313794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aed1580c1053e2366cbb798f337c797d18321f661c8c6d9b60b43234245bea10`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 25 Oct 2022 03:07:58 GMT
ADD file:294a94a081de785c730003a440a0530a85add2bcb60c0f5bc4ce7ee17867ac4e in / 
# Tue, 25 Oct 2022 03:08:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 25 Oct 2022 03:08:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 25 Oct 2022 03:08:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 25 Oct 2022 03:08:02 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:b95ba076a26b98e98eac4b43596b59c20d1e61a36bcaf2afae3aeebadc8844cf`  
		Last Modified: Sun, 08 Aug 2021 01:00:22 GMT  
		Size: 40.3 MB (40312250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67de3a011d085fbb829ef04d78536904c6ead23dbc82dd5facff2488d6398672`  
		Last Modified: Tue, 25 Oct 2022 03:10:54 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1202719f1ed95c66ca12784e9dd1983de008b6871eb2cb324c3a3f1a98836af`  
		Last Modified: Tue, 25 Oct 2022 03:10:54 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd1764d93e99e79b6b91814768fa379cc5ce0dce26c71ecfe2f5fc6b3f38212b`  
		Last Modified: Tue, 25 Oct 2022 03:10:55 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:xenial` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:f4c51ba054967fd4b06715f1b67078efbe9ca152e8be98d8f3c1f4d08c6042f8
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41240759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d125c6a1fe22504f84552b7eb11e353e88691875c18caf68847843892b190ccc`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 25 Oct 2022 05:55:17 GMT
ADD file:3c6dc937cb7b4c81b42126f377d23320ec1d0a8ca34d38e7c45871f1d08dac43 in / 
# Tue, 25 Oct 2022 05:55:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 25 Oct 2022 05:55:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 25 Oct 2022 05:55:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 25 Oct 2022 05:55:19 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:828b35a09f0b2f3d1dead43aa2468ff5eba6c463423b3fff7ee6d150f6fd1b6b`  
		Last Modified: Thu, 05 Aug 2021 00:25:09 GMT  
		Size: 41.2 MB (41239253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66927c6d1d3d2e9321c4893f7f2105b7cd23dfb082853d97ec08f188e271e612`  
		Last Modified: Tue, 25 Oct 2022 05:57:02 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:000560be91651dcbf476ebacb8bf1f1339694a3327f8e6da2519e0b29b33eb5d`  
		Last Modified: Tue, 25 Oct 2022 05:57:02 GMT  
		Size: 479.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6225a0253717abdc2ee23ea211c1c439c93b84231ec0a4f1c74762a205ba7234`  
		Last Modified: Tue, 25 Oct 2022 05:57:02 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:xenial` - linux; 386

```console
$ docker pull ubuntu@sha256:bcb8397f1390f4f0757ca06ce184f05c8ce0c7a4b5ff93f9ab029a581192917b
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45817719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:276b5b6b7721e99481801a9aaf21a4d2bf6ba6f6676f720f6f4e0da40a71fb19`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 05 Apr 2022 22:39:28 GMT
ADD file:a4ae521feddf8357667e9361bdd972a69ed945f3857cc8c534652592e432575d in / 
# Tue, 05 Apr 2022 22:39:29 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Apr 2022 22:39:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Apr 2022 22:39:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Apr 2022 22:39:32 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:1335d7ebdbbb7325d434cf945bcb54cb20f7288e1ca2a1cf140ae02b324646e6`  
		Last Modified: Sun, 08 Aug 2021 01:00:22 GMT  
		Size: 45.8 MB (45816182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffa6a227af79fa98ebbd1d2da516e2b7ce1cea5519a760cd0f6688738fbdb951`  
		Last Modified: Tue, 05 Apr 2022 22:40:40 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab3928723c2c34ecd7264ce4e195ddda11403213b1c93d02e8efcd11de4b07a1`  
		Last Modified: Tue, 05 Apr 2022 22:40:40 GMT  
		Size: 514.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e468001dd2f338d54f47d062d65db61c754f09897744d97084afa15cee021200`  
		Last Modified: Tue, 05 Apr 2022 22:40:40 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:xenial` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:4ef33ed6b1af10706727d280de436bced5e9413cba7992d6126c866efd79cacd
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.5 MB (47523643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17fb9d3bc97649795df6522739036df75814819b4b48997a6e05345dcd5e6845`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 02 Aug 2022 01:32:03 GMT
ADD file:c84969ed4d4e336ec5996e26e35261f683b36f1af7a978df587296ef5e7a2627 in / 
# Tue, 02 Aug 2022 01:32:06 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 02 Aug 2022 01:32:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 02 Aug 2022 01:32:08 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 02 Aug 2022 01:32:08 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:5057452c10cfe2216f39949f909f3cd83002d256d1bbd564ae242352a5460fe2`  
		Last Modified: Sun, 08 Aug 2021 01:00:30 GMT  
		Size: 47.5 MB (47522137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bced789eccb5759f541a5b15b9a3031c06cc54bdbff1a553cc0ef29ddad2bc`  
		Last Modified: Tue, 02 Aug 2022 01:36:22 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a11a61259761ffe18601a628413443ccb5dee06a185a81c902220dfc070801c3`  
		Last Modified: Tue, 02 Aug 2022 01:35:56 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3272460dff18ff8fd96d33337b0ff5cc5d9d2e7f158c662273e1bb760c7f9722`  
		Last Modified: Tue, 02 Aug 2022 01:36:06 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:xenial` - linux; s390x

```console
$ docker pull ubuntu@sha256:5fea5a070916f61785140faa8e16fa8bf7ca3f152ceed9c48154f8aca4c3667e
```

-	Docker Version: 20.10.7
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44089219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdb8683432fbdd1ec03145305370c4ec7079b01e22fcc47dd4df1aa862463474`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 31 Aug 2021 01:43:07 GMT
ADD file:8719dec76e2491e6bcc4cba5072d8123bd3472e72108280ea29f6a34761adbeb in / 
# Tue, 31 Aug 2021 01:43:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 31 Aug 2021 01:43:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 31 Aug 2021 01:43:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 31 Aug 2021 01:43:11 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:80d499f9d46bfeec5260ce5a395259ab5e54118e786a0e9023d6550a57730bd4`  
		Last Modified: Tue, 31 Aug 2021 01:45:04 GMT  
		Size: 44.1 MB (44087722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:883d7cfe3e67b3dd7ffd87697a9050dfad287116e1f38ed165b815d7285a7d70`  
		Last Modified: Tue, 31 Aug 2021 01:44:59 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05e68cf162fecf9f82ab0d540cd0f3af1a4a74defc8ba9434379cbae3a09b30c`  
		Last Modified: Tue, 31 Aug 2021 01:44:59 GMT  
		Size: 478.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bfcc45f37d760e154b69274e44e31fd64b8537f3cb1cba39203b537246bc891`  
		Last Modified: Tue, 31 Aug 2021 01:44:59 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ubuntu:xenial-20210804`

```console
$ docker pull ubuntu@sha256:1f1a2d56de1d604801a9671f301190704c25d604a416f59e03c04f5c6ffee0d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 6
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ubuntu:xenial-20210804` - linux; amd64

```console
$ docker pull ubuntu@sha256:a3785f78ab8547ae2710c89e627783cfa7ee7824d3468cae6835c9f4eae23ff7
```

-	Docker Version: 20.10.7
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.5 MB (46499103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6f50765242581c887ff1acc2511fa2d885c52d8fb3ac8c4bba131fd86567f2e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 31 Aug 2021 01:21:27 GMT
ADD file:11b425d4c08e81a3e0cb2e0345d27cd5fc844dd83f1096af4cc05f635824ff5d in / 
# Tue, 31 Aug 2021 01:21:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 31 Aug 2021 01:21:29 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 31 Aug 2021 01:21:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 31 Aug 2021 01:21:30 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:58690f9b18fca6469a14da4e212c96849469f9b1be6661d2342a4bf01774aa50`  
		Last Modified: Thu, 05 Aug 2021 00:25:05 GMT  
		Size: 46.5 MB (46497548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b51569e7c50720acf6860327847fe342a1afbe148d24c529fb81df105e3eed01`  
		Last Modified: Tue, 31 Aug 2021 01:23:09 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da8ef40b9ecabc2679fe2419957220c0272a965c5cf7e0269fa1aeeb8c56f2e1`  
		Last Modified: Tue, 31 Aug 2021 01:23:08 GMT  
		Size: 528.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb15d46c38dcd1ea0b1990006c3366ecd10c79d374f341687eb2cb23a2c8672e`  
		Last Modified: Tue, 31 Aug 2021 01:23:08 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:xenial-20210804` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:5c33df0beb44570500a6b44f64106321ad9b7510eea35120e9180f55164752b7
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.3 MB (40313794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aed1580c1053e2366cbb798f337c797d18321f661c8c6d9b60b43234245bea10`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 25 Oct 2022 03:07:58 GMT
ADD file:294a94a081de785c730003a440a0530a85add2bcb60c0f5bc4ce7ee17867ac4e in / 
# Tue, 25 Oct 2022 03:08:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 25 Oct 2022 03:08:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 25 Oct 2022 03:08:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 25 Oct 2022 03:08:02 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:b95ba076a26b98e98eac4b43596b59c20d1e61a36bcaf2afae3aeebadc8844cf`  
		Last Modified: Sun, 08 Aug 2021 01:00:22 GMT  
		Size: 40.3 MB (40312250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67de3a011d085fbb829ef04d78536904c6ead23dbc82dd5facff2488d6398672`  
		Last Modified: Tue, 25 Oct 2022 03:10:54 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1202719f1ed95c66ca12784e9dd1983de008b6871eb2cb324c3a3f1a98836af`  
		Last Modified: Tue, 25 Oct 2022 03:10:54 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd1764d93e99e79b6b91814768fa379cc5ce0dce26c71ecfe2f5fc6b3f38212b`  
		Last Modified: Tue, 25 Oct 2022 03:10:55 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:xenial-20210804` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:f4c51ba054967fd4b06715f1b67078efbe9ca152e8be98d8f3c1f4d08c6042f8
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 MB (41240759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d125c6a1fe22504f84552b7eb11e353e88691875c18caf68847843892b190ccc`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 25 Oct 2022 05:55:17 GMT
ADD file:3c6dc937cb7b4c81b42126f377d23320ec1d0a8ca34d38e7c45871f1d08dac43 in / 
# Tue, 25 Oct 2022 05:55:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 25 Oct 2022 05:55:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 25 Oct 2022 05:55:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 25 Oct 2022 05:55:19 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:828b35a09f0b2f3d1dead43aa2468ff5eba6c463423b3fff7ee6d150f6fd1b6b`  
		Last Modified: Thu, 05 Aug 2021 00:25:09 GMT  
		Size: 41.2 MB (41239253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66927c6d1d3d2e9321c4893f7f2105b7cd23dfb082853d97ec08f188e271e612`  
		Last Modified: Tue, 25 Oct 2022 05:57:02 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:000560be91651dcbf476ebacb8bf1f1339694a3327f8e6da2519e0b29b33eb5d`  
		Last Modified: Tue, 25 Oct 2022 05:57:02 GMT  
		Size: 479.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6225a0253717abdc2ee23ea211c1c439c93b84231ec0a4f1c74762a205ba7234`  
		Last Modified: Tue, 25 Oct 2022 05:57:02 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:xenial-20210804` - linux; 386

```console
$ docker pull ubuntu@sha256:bcb8397f1390f4f0757ca06ce184f05c8ce0c7a4b5ff93f9ab029a581192917b
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 MB (45817719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:276b5b6b7721e99481801a9aaf21a4d2bf6ba6f6676f720f6f4e0da40a71fb19`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 05 Apr 2022 22:39:28 GMT
ADD file:a4ae521feddf8357667e9361bdd972a69ed945f3857cc8c534652592e432575d in / 
# Tue, 05 Apr 2022 22:39:29 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Apr 2022 22:39:30 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Apr 2022 22:39:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Apr 2022 22:39:32 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:1335d7ebdbbb7325d434cf945bcb54cb20f7288e1ca2a1cf140ae02b324646e6`  
		Last Modified: Sun, 08 Aug 2021 01:00:22 GMT  
		Size: 45.8 MB (45816182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffa6a227af79fa98ebbd1d2da516e2b7ce1cea5519a760cd0f6688738fbdb951`  
		Last Modified: Tue, 05 Apr 2022 22:40:40 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab3928723c2c34ecd7264ce4e195ddda11403213b1c93d02e8efcd11de4b07a1`  
		Last Modified: Tue, 05 Apr 2022 22:40:40 GMT  
		Size: 514.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e468001dd2f338d54f47d062d65db61c754f09897744d97084afa15cee021200`  
		Last Modified: Tue, 05 Apr 2022 22:40:40 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:xenial-20210804` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:4ef33ed6b1af10706727d280de436bced5e9413cba7992d6126c866efd79cacd
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.5 MB (47523643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17fb9d3bc97649795df6522739036df75814819b4b48997a6e05345dcd5e6845`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 02 Aug 2022 01:32:03 GMT
ADD file:c84969ed4d4e336ec5996e26e35261f683b36f1af7a978df587296ef5e7a2627 in / 
# Tue, 02 Aug 2022 01:32:06 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 02 Aug 2022 01:32:07 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 02 Aug 2022 01:32:08 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 02 Aug 2022 01:32:08 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:5057452c10cfe2216f39949f909f3cd83002d256d1bbd564ae242352a5460fe2`  
		Last Modified: Sun, 08 Aug 2021 01:00:30 GMT  
		Size: 47.5 MB (47522137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72bced789eccb5759f541a5b15b9a3031c06cc54bdbff1a553cc0ef29ddad2bc`  
		Last Modified: Tue, 02 Aug 2022 01:36:22 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a11a61259761ffe18601a628413443ccb5dee06a185a81c902220dfc070801c3`  
		Last Modified: Tue, 02 Aug 2022 01:35:56 GMT  
		Size: 483.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3272460dff18ff8fd96d33337b0ff5cc5d9d2e7f158c662273e1bb760c7f9722`  
		Last Modified: Tue, 02 Aug 2022 01:36:06 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:xenial-20210804` - linux; s390x

```console
$ docker pull ubuntu@sha256:5fea5a070916f61785140faa8e16fa8bf7ca3f152ceed9c48154f8aca4c3667e
```

-	Docker Version: 20.10.7
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.1 MB (44089219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdb8683432fbdd1ec03145305370c4ec7079b01e22fcc47dd4df1aa862463474`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 31 Aug 2021 01:43:07 GMT
ADD file:8719dec76e2491e6bcc4cba5072d8123bd3472e72108280ea29f6a34761adbeb in / 
# Tue, 31 Aug 2021 01:43:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 31 Aug 2021 01:43:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 31 Aug 2021 01:43:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 31 Aug 2021 01:43:11 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:80d499f9d46bfeec5260ce5a395259ab5e54118e786a0e9023d6550a57730bd4`  
		Last Modified: Tue, 31 Aug 2021 01:45:04 GMT  
		Size: 44.1 MB (44087722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:883d7cfe3e67b3dd7ffd87697a9050dfad287116e1f38ed165b815d7285a7d70`  
		Last Modified: Tue, 31 Aug 2021 01:44:59 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05e68cf162fecf9f82ab0d540cd0f3af1a4a74defc8ba9434379cbae3a09b30c`  
		Last Modified: Tue, 31 Aug 2021 01:44:59 GMT  
		Size: 478.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bfcc45f37d760e154b69274e44e31fd64b8537f3cb1cba39203b537246bc891`  
		Last Modified: Tue, 31 Aug 2021 01:44:59 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
